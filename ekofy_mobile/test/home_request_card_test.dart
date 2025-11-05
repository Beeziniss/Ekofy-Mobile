import 'package:ekofy_mobile/features/request_hub/data/models/request.dart';
import 'package:ekofy_mobile/features/request_hub/data/models/request_status.dart';
import 'package:ekofy_mobile/features/request_hub/presentation/widgets/request_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('RequestCard displays title, description and status badge', (tester) async {
    final item = RequestItem(
      id: 't1',
      title: 'Mix and master track',
      description: 'Need polished mix',
      type: 'Audio',
      createdAt: DateTime.now().subtract(const Duration(hours: 3)),
      amount: 120,
      currency: 'USD',
      free: false,
      status: RequestStatus.pending,
    );

    await tester.pumpWidget(MaterialApp(home: Scaffold(body: RequestCard(item: item))));

    expect(find.text('Mix and master track'), findsOneWidget);
    expect(find.textContaining('Need polished mix'), findsOneWidget);
    // Status label
    expect(find.text('Pending'), findsOneWidget);

    // Semantics label exists
    final semantics = tester.getSemantics(find.byType(RequestCard));
    expect(semantics.hasFlag(SemanticsFlag.isButton), isTrue);
  });
}
