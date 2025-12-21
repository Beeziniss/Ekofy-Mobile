import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:ekofy_mobile/core/configs/routes/app_route.dart';
import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/core/utils/helper.dart';
import 'package:ekofy_mobile/core/widgets/button/custom_button.dart';
import 'package:ekofy_mobile/core/widgets/info/key_value_table.dart';
import 'package:ekofy_mobile/features/request/data/models/own_request.dart';
import 'package:ekofy_mobile/features/request/data/models/request_status.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:ekofy_mobile/features/profile/presentation/providers/profile_notifier.dart';
import 'package:ekofy_mobile/gql/mutation/generated/request_mutation.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/artist_query.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/conversation_query.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class OwnRequestDetailScreen extends ConsumerStatefulWidget {
  final OwnRequestItem item;
  const OwnRequestDetailScreen({super.key, required this.item});

  @override
  ConsumerState<OwnRequestDetailScreen> createState() =>
      _OwnRequestDetailScreenState();
}

class _OwnRequestDetailScreenState
    extends ConsumerState<OwnRequestDetailScreen> {
  late AppLinks _appLinks;
  StreamSubscription<Uri>? _linkSubscription;

  @override
  void initState() {
    super.initState();
    _initDeepLinkListener();
  }

  @override
  void dispose() {
    _linkSubscription?.cancel();
    super.dispose();
  }

  Future<void> _initDeepLinkListener() async {
    _appLinks = AppLinks();

    // Handle deep link when app is in background or terminated
    try {
      final initialLink = await _appLinks.getInitialLink();
      if (initialLink != null) {
        _handleDeepLink(initialLink);
      }
    } catch (e) {
      debugPrint('Initial link error: $e');
    }

    // Handle deep link when app is in foreground
    _linkSubscription = _appLinks.uriLinkStream.listen(
      (Uri? uri) {
        if (uri != null) {
          _handleDeepLink(uri);
        }
      },
      onError: (err) {
        debugPrint('Deep link error: $err');
      },
    );
  }

  void _handleDeepLink(Uri uri) {
    // Expected format: ekofy://app/payment/success or ekofy://app/payment/failure
    if (uri.scheme == 'ekofy' && uri.host == 'app') {
      if (uri.path.contains('/payment/success')) {
        Fluttertoast.showToast(
          msg: "Payment Successful",
          backgroundColor: Colors.green,
          textColor: Colors.white,
        );
        if (mounted) context.go(RouteName.paymentSuccess);
      } else if (uri.path.contains('/payment/failure') ||
          uri.path.contains('/payment/cancel')) {
        Fluttertoast.showToast(
          msg: "Payment Failed",
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
        if (mounted) {
          context.go(
            RouteName.paymentFailure,
            extra: "Payment was not completed.",
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Request Details')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // _noteSection(theme),
              // const SizedBox(height: 16),
              _headerSection(theme),
              const SizedBox(height: 16),
              _packageInformationSection(theme),
              const SizedBox(height: 16),
              _detailSection(theme),
              const SizedBox(height: 16),
              _metadataSection(theme),
              const SizedBox(height: 24),
              _actionsSection(context),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _noteSection(ThemeData theme) {
  //   return Container(
  //     width: double.infinity,
  //     padding: const EdgeInsets.all(16),
  //     decoration: BoxDecoration(
  //       color: Color(0xFFFEF9C3),
  //       borderRadius: BorderRadius.circular(12),
  //       border: Border.all(color: Color(0xFFF59E0B)),
  //     ),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Row(
  //           children: [
  //             Icon(Icons.book, color: const Color(0xFF92400E)),
  //             const Text(
  //               'Note',
  //               style: TextStyle(
  //                 fontWeight: FontWeight.w600,
  //                 color: Color(0xFF92400E),
  //               ),
  //             ),
  //           ],
  //         ),
  //         const SizedBox(height: 8),
  //         Text(
  //           'The mobile app is just now supporting features for listener. Please access our web app as an artist to apply.',
  //           style: theme.textTheme.bodyMedium?.copyWith(
  //             color: const Color(0xFF92400E),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget _headerSection(ThemeData theme) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF111111),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF2C2C2C)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _typeAvatar(
            widget
                .item
                .artist
                ?.avatarUrl, // Using stageName as fallback for avatar text
            widget.item.artist?.stageName ?? 'Unknown',
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.item.artist?.stageName ?? 'Unknown Artist',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  widget.item.type.name,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          // RequestStatusBadge(status: item.status),
        ],
      ),
    );
  }

  Widget _detailSection(ThemeData theme) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF0F0F0F),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF2C2C2C)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Requirements',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          HtmlWidget(
            widget.item.requirements ?? 'No requirements specified.',
            textStyle: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  Widget _metadataSection(ThemeData theme) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF0F0F0F),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF2C2C2C)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Details', style: TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          KeyValueTable(
            outlined: false,
            rows: [
              // KeyValueRow(label: 'Created', value: Text(createdAtStr)),
              KeyValueRow(
                label: 'Duration',
                value: Text("${widget.item.duration} day(s)"),
              ),
              KeyValueRow(label: 'Budget', value: _budgetSection()),
            ],
          ),
        ],
      ),
    );
  }

  Widget _budgetSection() {
    if (widget.item.type == Enum$RequestType.DIRECT_REQUEST) {
      return Text(
        "${Helper.formatCurrency(widget.item.artistPackage?.amount ?? 0)} ${_convertCurrency(widget.item.currency)}",
      );
    }
    return Text(
      "${Helper.formatCurrency(widget.item.budget.min)} ${_convertCurrency(widget.item.currency)} - ${Helper.formatCurrency(widget.item.budget.max)} ${_convertCurrency(widget.item.currency)}",
    );
  }

  Widget _actionsSection(BuildContext context) {
    if (widget.item.status == RequestStatus.pending) {
      return Mutation$ChangeRequestStatus$Widget(
        options: WidgetOptions$Mutation$ChangeRequestStatus(
          onCompleted: (data, data2) {
            Fluttertoast.showToast(
              msg: "Request cancelled successfully",
              backgroundColor: Colors.green,
            );
            Navigator.pop(context);
          },
          onError: (error) {
            Fluttertoast.showToast(
              msg:
                  "Error: ${error?.graphqlErrors.firstOrNull?.message ?? error.toString()}",
              backgroundColor: AppColors.error,
            );
          },
        ),
        builder: (runMutation, result) {
          return CustomButton(
            title: result?.isLoading == true
                ? 'Cancelling...'
                : 'Cancel Request',
            height: 48,
            onPressed: () {
              if (result?.isLoading == true) return;
              runMutation(
                Variables$Mutation$ChangeRequestStatus(
                  requestId: widget.item.id,
                  status: Enum$RequestStatus.CANCELED,
                ),
              );
            },
            gradientColors: [Colors.red, Colors.redAccent],
          );
        },
      );
    }

    if (widget.item.status != RequestStatus.confirmed) {
      return const SizedBox.shrink();
    }

    if (widget.item.packageId == null) {
      return CustomButton(
        title: 'Pay',
        height: 48,
        onPressed: () {
          Fluttertoast.showToast(msg: "Package ID is missing");
        },
        gradientColors: [AppColors.deepBlue, AppColors.violet],
      );
    }

    // Lấy artistId trực tiếp từ widget.item thay vì query
    final artistId = widget.item.artist?.userId;
    final profileState = ref.watch(profileProvider);
    final currentUserId = profileState.value?.original?.userId;

    if (profileState.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (artistId == null || currentUserId == null) {
      return const Text(
        "Error: Missing user information",
        style: TextStyle(color: Colors.red),
      );
    }

    return Query$getConversationIdFromRequest$Widget(
      options: Options$Query$getConversationIdFromRequest(
        variables: Variables$Query$getConversationIdFromRequest(
          userId: currentUserId,
          requestId: widget.item.id,
          artistId: artistId,
        ),
      ),
      builder: (resultConv, {fetchMore, refetch}) {
        if (resultConv.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (resultConv.hasException) {
          return Column(
            children: [
              Text(
                "Error loading conversation: ${resultConv.exception.toString()}",
                style: const TextStyle(color: Colors.red),
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () => refetch?.call(),
                child: const Text("Retry"),
              ),
            ],
          );
        }

        final conversationId = resultConv
            .parsedData
            ?.conversationsByUserId
            ?.items
            ?.firstOrNull
            ?.id;

        return Mutation$CreatePaymentCheckoutSession$Widget(
          options: WidgetOptions$Mutation$CreatePaymentCheckoutSession(
            onCompleted: (data, data2) async {
              final urlStr = data?['createPaymentCheckoutSession']?['url'];
              if (urlStr != null) {
                final Uri url = Uri.parse(urlStr);
                if (!await launchUrl(
                  url,
                  mode: LaunchMode.externalApplication,
                )) {
                  Fluttertoast.showToast(msg: "Could not launch payment URL");
                }
              }
            },
            onError: (error) {
              Fluttertoast.showToast(
                msg:
                    "Error: ${error?.graphqlErrors.firstOrNull?.message ?? error.toString()}",
                backgroundColor: AppColors.error,
              );
            },
          ),
          builder: (runMutation, result) {
            return CustomButton(
              title: result?.isLoading == true ? 'Processing...' : 'Pay',
              height: 48,
              onPressed: () {
                if (result?.isLoading == true) return;

                runMutation(
                  Variables$Mutation$CreatePaymentCheckoutSession(
                    packageId: widget.item.packageId!,
                    requestId: widget.item.id,
                    successUrl: "ekofy://app/payment/success",
                    cancelUrl: "ekofy://app/payment/cancel",
                    isSavePaymentMethod: false,
                    isReceiptEmail: true,
                    requirements: widget.item.requirements ?? '',
                    duration: widget.item.duration,
                    conversationId: conversationId,
                    deliveries: [],
                  ),
                );
              },
              gradientColors: [AppColors.deepBlue, AppColors.violet],
            );
          },
        );
      },
    );
  }

  //String _primaryActionLabel(RequestStatus status) {
  // switch (status) {
  //   case RequestStatus.open:
  // return 'Contact';
  // case RequestStatus.inProgress:
  //   return 'This request is in progress';
  // case RequestStatus.completed:
  //   return 'This request has been fulfilled';
  // case RequestStatus.rejected:
  //   return 'Request Again';
  // }
  Widget _packageInformationSection(ThemeData theme) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF0F0F0F),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF2C2C2C)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Package Details',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          KeyValueTable(
            outlined: false,
            rows: [
              // KeyValueRow(label: 'Created', value: Text(createdAtStr)),
              KeyValueRow(
                label: 'Name',
                value: Text("${widget.item.artistPackage!.packageName}"),
              ),
              KeyValueRow(
                label: 'Description',
                value: Text(widget.item.artistPackage!.description),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// void _placeholder(BuildContext context, String msg) {
//   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
// }

String _convertCurrency(Enum$CurrencyType val) {
  switch (val) {
    case Enum$CurrencyType.VND:
      return 'VND';
    default:
      return '';
  }
}

Widget _typeAvatar(String? url, String displayName) {
  return CircleAvatar(
    radius: 20,
    backgroundColor: const Color(0xFF2C2C2C),
    backgroundImage: url != null ? NetworkImage(url) : null,
    child: url == null || url.isEmpty
        ? Text(
            displayName[0].toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        : null, // nếu có url thì không hiển thị chữ
  );
}
