import 'dart:async';

import 'package:ekofy_mobile/core/configs/routes/app_route.dart';
import 'package:ekofy_mobile/features/payment/presentation/providers/payment_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:app_links/app_links.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PaymentScreen extends ConsumerStatefulWidget {
  const PaymentScreen({super.key});

  @override
  ConsumerState<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends ConsumerState<PaymentScreen> {
  // TODO: Replace with your actual Backend URL that initiates the payment
  final String _backendPaymentUrl =
      "";

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

  Future<void> _launchPaymentUrl() async {
    final Uri url = Uri.parse(_backendPaymentUrl);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      Fluttertoast.showToast(msg: "Could not launch payment URL");
    }
  }

  @override
  Widget build(BuildContext context) {
    // final state = ref.watch(paymentProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Payment')),
      body: Center(
        child:
            // state is PaymentLoading
            //     ? const Image.asset(AppImages.loader, gaplessPlayback: true)
            //     :
            ElevatedButton(
              onPressed: _launchPaymentUrl,
              child: const Text('Pay Now'),
            ),
      ),
    );
  }
}
