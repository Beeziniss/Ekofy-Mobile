import 'package:flutter/material.dart';

import '../../../../core/widgets/info/key_value_table.dart';
import '../../data/models/request.dart';
import '../../data/models/request_status.dart';
import '../../../../core/widgets/badges/status_badge.dart';

class RequestDetailScreen extends StatelessWidget {
  final RequestItem item;
  const RequestDetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Request Details'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _headerSection(theme),
              const SizedBox(height: 16),
              _descriptionSection(theme),
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
          CircleAvatar(radius: 24, child: Text(item.type.isNotEmpty ? item.type[0].toUpperCase() : '?')),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                const SizedBox(height: 4),
                Text(item.type, style: theme.textTheme.bodySmall?.copyWith(color: Colors.white70)),
              ],
            ),
          ),
          StatusBadge(status: item.status),
        ],
      ),
    );
  }

  Widget _descriptionSection(ThemeData theme) {
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
          const Text('Description', style: TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          Text(item.description),
        ],
      ),
    );
  }

  Widget _metadataSection(ThemeData theme) {
    final id = item.id;
    final createdAtStr = _formatDate(item.createdAt);
    final user = '—';
    final assigned = '—';
    final amountStr = item.free ? 'Free' : _formatAmount(item.amount, item.currency);
    final transactionId = item.status == RequestStatus.completed ? 'TXN-${id.substring(0, 5).toUpperCase()}' : '—';

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
              KeyValueRow(label: 'Request ID', value: Text(id)),
              KeyValueRow(label: 'Created', value: Text(createdAtStr)),
              KeyValueRow(label: 'User', value: Text(user)),
              KeyValueRow(label: 'Assigned to', value: Text(assigned)),
              KeyValueRow(label: 'Amount', value: Text(amountStr)),
              KeyValueRow(label: 'Transaction Id', value: Text(transactionId)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _actionsSection(BuildContext context) {
    final primaryLabel = _primaryActionLabel(item.status);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: Semantics(
                button: true,
                label: primaryLabel,
                child: ElevatedButton(
                  onPressed: () => _placeholder(context, '$primaryLabel (mock)'),
                  child: Text(primaryLabel),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () => _placeholder(context, 'Share (mock)'),
                icon: const Icon(Icons.share),
                label: const Text('Share'),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () => _placeholder(context, 'Download (mock)'),
                icon: const Icon(Icons.download),
                label: const Text('Download'),
              ),
            ),
          ],
        ),
      ],
    );
  }

  String _primaryActionLabel(RequestStatus status) {
    switch (status) {
      case RequestStatus.pending:
        return 'Contact';
      case RequestStatus.inProgress:
        return 'This request is in progress';
      case RequestStatus.completed:
        return 'This request has been fulfilled';
      case RequestStatus.rejected:
        return 'Request Again';
    }
  }

  String _formatDate(DateTime d) {
    return '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';
  }

  String _formatAmount(double amount, String currency) {
    return '${_currencySymbol(currency)}${amount.toStringAsFixed(2)}';
  }

  String _currencySymbol(String currency) {
    switch (currency.toUpperCase()) {
      case 'USD':
        return '\u000024';
      case 'EUR':
        return '\u000080';
      case 'VND':
        return '₫';
      default:
        return '';
    }
  }

  void _placeholder(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }
}
