import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../domain/models/transaction_item.dart';
import '../widgets/transaction_status_badge.dart';

class TransactionHistoryListScreen extends ConsumerStatefulWidget {
  const TransactionHistoryListScreen({super.key});

  @override
  ConsumerState<TransactionHistoryListScreen> createState() =>
      _TransactionHistoryListScreenState();
}

class _TransactionHistoryListScreenState
    extends ConsumerState<TransactionHistoryListScreen> {
  late Future<List<TransactionItem>> _future;

  @override
  void initState() {
    super.initState();
    _future = ref.read(transactionRepositoryProvider).listTransactions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0E),
      appBar: AppBar(
        title: const Text(
          'Payment History',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: FutureBuilder<List<TransactionItem>>(
              future: _future,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      'Failed to load transactions',
                      style: const TextStyle(color: Colors.white70),
                    ),
                  );
                }
                final data = snapshot.data ?? const [];
                if (data.isEmpty) {
                  return const Center(
                    child: Text(
                      'No transactions found.',
                      style: TextStyle(color: Colors.white70),
                    ),
                  );
                }
                return ListView.separated(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  itemCount: data.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 12),
                  itemBuilder: (context, i) {
                    final t = data[i];
                    return _TransactionCard(
                      item: t,
                      onTap: () => context.push('/transactions/${t.id}'),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _TransactionCard extends StatelessWidget {
  final TransactionItem item;
  final VoidCallback onTap;
  const _TransactionCard({required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF15151B),
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
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
                    ),
                  ),
                  // const Spacer(),
                  // TransactionStatusBadge(status: item.status),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                formatAmountMajor(item.amountMinor, item.currency),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              if (item.from != null && item.to != null) ...[
                Text(
                  'From: ${item.from!}',
                  style: const TextStyle(color: Colors.white70, fontSize: 13),
                ),
                const SizedBox(height: 4),
                Text(
                  'To: ${item.to!}',
                  style: const TextStyle(color: Colors.white70, fontSize: 13),
                ),
                const SizedBox(height: 4),
              ],
              Text(
                _formatDate(item.createdAt),
                style: const TextStyle(color: Colors.white54, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatDate(DateTime d) {
    return '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';
  }
}
