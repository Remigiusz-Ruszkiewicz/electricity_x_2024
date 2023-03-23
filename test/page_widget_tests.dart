import 'package:electricity_x_2024/base/page_widget.dart';
import 'package:electricity_x_2024/customWidgets/divider_with_child.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

// Define a mock for the 'BuildContext' class
class MockBuildContext extends Mock implements BuildContext {}

void main() {
  group('PageWidget', () {
    testWidgets('renders with required parameters', (WidgetTester tester) async {
      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.pumpWidget(

        const MaterialApp(
          home: PageWidget(
            title: 'Test Title',
            topWidget: SizedBox(),
          ),
        ),
      );
      await tester.pumpAndSettle(const Duration(seconds: 1));
      expect(find.text('Test Title'), findsOneWidget);
      expect(find.byType(SingleChildScrollView), findsOneWidget);
    });

    testWidgets('renders with all parameters', (WidgetTester tester) async {
      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.pumpWidget(
        const MaterialApp(
          home: PageWidget(
            title: 'Test Title',
            topWidget: SizedBox(),
            midWidget: SizedBox(),
            bottomWidget: SizedBox(),
            settingVisible: true,
            enableSideTopPadding: false,
          ),
        ),
          const Duration(seconds: 1)
      );
      await tester.pumpAndSettle(const Duration(seconds: 1));
      expect(find.text('Test Title'), findsOneWidget);
      expect(find.byType(SingleChildScrollView), findsOneWidget);
      expect(find.byType(DividerWithChild), findsNWidgets(2));
    });

    testWidgets('renders SpeedDial with children', (WidgetTester tester) async {
      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.pumpWidget(
        const MaterialApp(
          home: PageWidget(
            title: 'Test Title',
            topWidget: SizedBox(),
          ),
        ),

          const Duration(seconds: 1)
      );

      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle(const Duration(seconds: 1));

      expect(find.byType(SpeedDial), findsOneWidget);
      expect(find.byIcon(Icons.close), findsOneWidget);
      expect(find.byType(InkWell), findsNWidgets(9));
    });
  });
}
