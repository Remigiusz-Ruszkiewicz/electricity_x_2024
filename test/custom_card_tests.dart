import 'package:electricity_x_2024/customWidgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CustomCard renders correctly with default values', (WidgetTester tester) async {
    await tester.pumpAndSettle(const Duration(seconds: 1));
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CustomCard(
            content: Text('Hello, World!'),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle(const Duration(seconds: 1));
    final cardFinder = find.byType(CustomCard);
    expect(cardFinder, findsOneWidget);
    await tester.pumpAndSettle(const Duration(seconds: 1));
    final textFinder = find.text('Hello, World!');
    expect(textFinder, findsOneWidget);
  });

  testWidgets('CustomCard renders correctly with custom values', (WidgetTester tester) async {
    await tester.pumpAndSettle(const Duration(seconds: 1));
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CustomCard(
            color: Colors.blue,
            opacityColor: Colors.black,
            content: Text('Hello, World!'),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle(const Duration(seconds: 1));
    final cardFinder = find.byType(CustomCard);
    expect(cardFinder, findsOneWidget);
    await tester.pumpAndSettle(const Duration(seconds: 1));
    final textFinder = find.text('Hello, World!');
    expect(textFinder, findsOneWidget);
    await tester.pumpAndSettle(const Duration(seconds: 1));
    final color = (cardFinder.evaluate().first.widget as CustomCard).color;
    expect(color, equals(Colors.blue));
  });

  testWidgets('getCard renders correctly', (WidgetTester tester) async {
    await tester.pumpAndSettle(const Duration(seconds: 1));
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: getCard('Hello, World!', color: Colors.red),
        ),
      ),
    );
    await tester.pumpAndSettle(const Duration(seconds: 1));
    final cardFinder = find.byType(CustomCard);
    expect(cardFinder, findsOneWidget);
    await tester.pumpAndSettle(const Duration(seconds: 1));
    final textFinder = find.text('Hello, World!');
    expect(textFinder, findsOneWidget);
    await tester.pumpAndSettle(const Duration(seconds: 1));
    final color = (cardFinder.evaluate().first.widget as CustomCard).color;
    expect(color, equals(Colors.red));
  });
}
