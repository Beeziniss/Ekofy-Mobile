import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/core/configs/graphql_client_provider.dart';
import 'package:ekofy_mobile/features/inbox/data/models/conversation_model.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/order_query.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart';

class ProfileInfoSheet extends ConsumerStatefulWidget {
  final ConversationItem conversation;
  final ConversationProfile otherProfile;

  const ProfileInfoSheet({
    super.key,
    required this.conversation,
    required this.otherProfile,
  });

  @override
  ConsumerState<ProfileInfoSheet> createState() => _ProfileInfoSheetState();
}

class _ProfileInfoSheetState extends ConsumerState<ProfileInfoSheet> {
  List<Query$OrderPackage$packageOrders$items>? _orders;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadOrders();
  }

  Future<void> _loadOrders() async {
    try {
      // Build filter similar to JS example - simplified version
      // For now, just filter by conversation ID if available
      final where = Input$PackageOrderFilterInput(
        conversationId: Input$StringOperationFilterInput(
          eq: widget.conversation.id,
        ),
      );

      final client = ref.read(graphqlClientProvider);
      final variables = Variables$Query$OrderPackage(where: where, take: 5);
      final options = Options$Query$OrderPackage(
        variables: variables,
        fetchPolicy: FetchPolicy.networkOnly,
      );

      final result = await client.query$OrderPackage(options);

      if (!result.hasException) {
        setState(() {
          _orders = result.parsedData?.packageOrders?.items ?? [];
          _isLoading = false;
        });
      } else {
        setState(() {
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkGrey : Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Orders section
                if (_isLoading)
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: CircularProgressIndicator(),
                    ),
                  )
                else if (_orders != null && _orders!.isNotEmpty) ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Orders with artist',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: isDark ? Colors.white : Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // TODO: Navigate to full orders page
                          context.pop();
                          // context.push('/orders');
                        },
                        child: const Text(
                          'To Order page',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: AppColors.violet,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  ..._orders!.map((order) => _buildOrderCard(order, isDark)),
                  const SizedBox(height: 20),
                ],
                // Profile Information section
                Text(
                  'Profile Information',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: isDark ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: AppColors.violet.withOpacity(0.3),
                    backgroundImage: widget.otherProfile.avatar != null
                        ? NetworkImage(widget.otherProfile.avatar!)
                        : null,
                    child: widget.otherProfile.avatar == null
                        ? Text(
                            widget.otherProfile.nickname
                                    ?.substring(0, 1)
                                    .toUpperCase() ??
                                'U',
                            style: const TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                        : null,
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Text(
                    widget.otherProfile.nickname ?? 'Unknown User',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                // Additional info can be added here
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOrderCard(
    Query$OrderPackage$packageOrders$items order,
    bool isDark,
  ) {
    final packageName = order.package.isNotEmpty
        ? order.package.first.packageName
        : 'Order';

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.mediumGrey : Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: AppColors.violet.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Icon(Icons.music_note, color: AppColors.violet),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  packageName,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: isDark ? Colors.white : Colors.black,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  DateFormat('MMM dd, yyyy').format(order.createdAt),
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    color: AppColors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 16, color: AppColors.grey),
        ],
      ),
    );
  }
}
