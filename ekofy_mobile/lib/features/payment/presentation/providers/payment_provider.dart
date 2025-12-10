import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'payment_state.dart';

class PaymentNotifier extends Notifier<PaymentState> {
  @override
  PaymentState build() {
    return PaymentInitial();
  }
}

final paymentProvider = NotifierProvider<PaymentNotifier, PaymentState>(() {
  return PaymentNotifier();
});
