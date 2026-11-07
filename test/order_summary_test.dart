import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/order.dart';
import 'package:lab_04/order_summary.dart';

void main() {
  testWidgets('Displays RM 25.00 total correctly', (WidgetTester tester) async {
    final order = Order(
      itemName: 'Cheese Pizza',
      quantity: 1,
      unitPrice: 25.00,
    );

    await tester.pumpWidget(
      MaterialApp(home: OrderSummaryScreen(order: order)),
    );

    expect(find.text('Total: RM 25.00'), findsOneWidget);
  });
}
