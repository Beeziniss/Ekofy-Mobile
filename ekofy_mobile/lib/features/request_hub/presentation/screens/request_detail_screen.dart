import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/core/utils/helper.dart';
import 'package:ekofy_mobile/features/request_hub/presentation/widgets/request_status_badge.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import '../../../../core/widgets/info/key_value_table.dart';
import '../../data/models/request.dart';

class RequestDetailScreen extends StatelessWidget {
  final RequestItem item;
  const RequestDetailScreen({super.key, required this.item});

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
              _noteSection(theme),
              const SizedBox(height: 16),
              _headerSection(theme),
              const SizedBox(height: 16),
              _detailSection(theme),
              const SizedBox(height: 16),
              _metadataSection(theme),
              // const SizedBox(height: 24),
              // _actionsSection(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _noteSection(ThemeData theme) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFFEF9C3),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xFFF59E0B)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.book, color: const Color(0xFF92400E)),
              const Text(
                'Note',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF92400E),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'The mobile app is just now supporting features for listener. Please access our web app as an artist to apply.',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: const Color(0xFF92400E),
            ),
          ),
        ],
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
          _typeAvatar(item.requestor.avatarImage, item.requestor.displayName),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.requestor.displayName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  item.type,
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
          const Text('Details', style: TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          HtmlWidget(
            item.detailDescription,
            textStyle: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  Widget _metadataSection(ThemeData theme) {
    final createdAtStr = Helper.formatDate(item.createdAt);

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
              KeyValueRow(label: 'Created', value: Text(createdAtStr)),
              KeyValueRow(
                label: 'Duration',
                value: Text("${item.duration} day(s)"),
              ),
              KeyValueRow(
                label: 'Budget',
                value: Text(
                  "${Helper.formatCurrency(item.budget.min)} ${_convertCurrency(item.currency)} - ${Helper.formatCurrency(item.budget.max)} ${_convertCurrency(item.currency)}",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Widget _actionsSection(BuildContext context) {
  //   final primaryLabel = _primaryActionLabel(item.status);
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.stretch,
  //     children: [
  //       Row(
  //         children: [
  //           Expanded(
  //             child: Semantics(
  //               button: true,
  //               label: primaryLabel,
  //               child: ElevatedButton(
  //                 onPressed: () =>
  //                     _placeholder(context, '$primaryLabel (mock)'),
  //                 child: Text(primaryLabel),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //       const SizedBox(height: 8),
  //       Row(
  //         children: [
  //           Expanded(
  //             child: OutlinedButton.icon(
  //               onPressed: () => _placeholder(context, 'Share (mock)'),
  //               icon: const Icon(Icons.share),
  //               label: const Text('Share'),
  //             ),
  //           ),
  //           const SizedBox(width: 12),
  //           Expanded(
  //             child: OutlinedButton.icon(
  //               onPressed: () => _placeholder(context, 'Download (mock)'),
  //               icon: const Icon(Icons.download),
  //               label: const Text('Download'),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ],
  //   );
  // }

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
}

// void _placeholder(BuildContext context, String msg) {
//   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
// }

String _convertCurrency(Enum$CurrencyType val) {
  switch (val) {
    case Enum$CurrencyType.VND:
      return '₫';
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
