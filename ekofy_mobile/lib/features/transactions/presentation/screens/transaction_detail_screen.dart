import 'package:ekofy_mobile/features/transactions/domain/models/transaction_status.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/repositories/mock_transaction_repository.dart';
import '../../data/repositories/transaction_repository.dart';
import '../../domain/models/transaction_item.dart';
import '../widgets/transaction_status_badge.dart';

class TransactionDetailScreen extends StatefulWidget {
  final String transactionId;
  final TransactionRepository repository;
  TransactionDetailScreen({
    super.key,
    required this.transactionId,
    TransactionRepository? repository,
  }) : repository =
           repository ?? MockTransactionRepository(); //INFO: default mock repo

  @override
  State<TransactionDetailScreen> createState() =>
      _TransactionDetailScreenState();
}

class _TransactionDetailScreenState extends State<TransactionDetailScreen> {
  late Future<TransactionItem?> _future;

  @override
  void initState() {
    super.initState();
    _future = widget.repository.getById(widget.transactionId);
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
            const SizedBox(height: 8),
            _kv('Stripe Payment Id', item.stripePaymentId),
            const SizedBox(height: 8),
            _kv('Payment Methods', item.paymentMethods.join(', ')),
            const SizedBox(height: 8),
            _kv('Status', item.status.label),
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
