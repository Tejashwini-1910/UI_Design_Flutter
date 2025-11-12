import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_testing/main.dart'; // change this path if needed

void main() {
  testWidgets('Counter increments when FAB is tapped', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Verify initial counter value is 0
    expect(find.text('0'), findsOneWidget);

    // Tap the floating action button
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify counter incremented
    expect(find.text('1'), findsOneWidget);
  });
}
