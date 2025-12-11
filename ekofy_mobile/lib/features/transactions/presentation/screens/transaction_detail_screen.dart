import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/features/transactions/domain/models/transaction_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../domain/models/transaction_item.dart';
import '../widgets/transaction_status_badge.dart';

class TransactionDetailScreen extends ConsumerStatefulWidget {
  final String transactionId;
  const TransactionDetailScreen({super.key, required this.transactionId});

  @override
  ConsumerState<TransactionDetailScreen> createState() =>
      _TransactionDetailScreenState();
}

class _TransactionDetailScreenState
    extends ConsumerState<TransactionDetailScreen> {
  late Future<TransactionItem?> _future;

  @override
  void initState() {
    super.initState();
    _future = ref
        .read(transactionRepositoryProvider)
        .getById(widget.transactionId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0E),
      appBar: AppBar(
        title: const Text(
          'Transaction Detail',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: FutureBuilder<TransactionItem?>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          final item = snapshot.data;
          if (item == null) {
            return const Center(
              child: Text(
                'Transaction not found.',
                style: TextStyle(color: Colors.white70),
              ),
            );
          }
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Reference: ${widget.transactionId}',
                  style: const TextStyle(color: Colors.white70, fontSize: 13),
                ),
                const SizedBox(height: 12),
                _detailCard(item),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _detailCard(TransactionItem item) {
    return Card(
      color: const Color(0xFF15151B),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  formatShortId(item.id),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                TransactionStatusBadge(status: item.status),
              ],
            ),
            const SizedBox(height: 12),
            _kv('Amount', formatAmountMajor(item.amountMinor, item.currency)),
            const SizedBox(height: 8),
            _kv('Created', _formatDateTime(item.createdAt)),
            if (item.stripePaymentId != null) ...[
              const SizedBox(height: 8),
              _kv('Stripe Payment Id', item.stripePaymentId!),
            ],
            const SizedBox(height: 8),
            _kv('Payment Methods', item.paymentMethods.join(', ')),
            const SizedBox(height: 8),
            _kv('Status', item.status.label),
            if (item.packageName != null) ...[
              const SizedBox(height: 8),
              _kv('Package', item.packageName!),
            ],
            if (item.fullName != null) ...[
              const SizedBox(height: 8),
              _kv('Full Name', item.fullName!),
            ],
            if (item.email != null) ...[
              const SizedBox(height: 8),
              _kv('Email', item.email!),
            ],
          ],
        ),
      ),
    );
  }

  Widget _kv(String k, String v) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 140,
          child: Text(
            k,
            style: const TextStyle(color: Colors.white70, fontSize: 13),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            v,
            style: const TextStyle(color: Colors.white, fontSize: 13),
          ),
        ),
      ],
    );
  }

  String _formatDateTime(DateTime d) {
    return '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')} ${d.hour.toString().padLeft(2, '0')}:${d.minute.toString().padLeft(2, '0')}';
  }
}
