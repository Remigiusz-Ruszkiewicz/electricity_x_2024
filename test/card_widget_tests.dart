import 'package:electricity_x_2024/customWidgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  testWidgets('ProductCard should have CarouselSlider widget', (WidgetTester tester) async {
    await tester.pumpAndSettle(const Duration(seconds: 1));
    await tester.pumpWidget(MaterialApp(
      home: ProductCard(),
    ));
    await tester.pumpAndSettle(const Duration(seconds: 1));
    expect(find.byType(CarouselSlider), findsOneWidget);
  });

  testWidgets('ProductCard should display product details', (WidgetTester tester) async {
    await tester.pumpAndSettle(const Duration(seconds: 1));
    await tester.pumpWidget(MaterialApp(
      home: ProductCard(),
    ));
    await tester.pumpAndSettle(const Duration(seconds: 1));
    final images = ['assets/images/foto_1.png', 'assets/images/foto_2.png', 'assets/images/foto_3.png', 'assets/images/foto_4.png'];
    final titles = ['Colombo Energy', 'Power Energy', 'Foto Energy', 'SONASL Energy'];
    final numbers = ['798 552 016', '789 655 241', '602 993 103', '536 551 888'];
    final websites = ['www.colomboenergy.com', 'www.powerenergy.com', 'www.fotoenergy.com', 'www.sonaslenergy.com'];
    await tester.pumpAndSettle(const Duration(seconds: 1));
    for (var i = 0; i < images.length; i++) {
      final image = images[i];
      final title = titles[i];
      final number = numbers[i];
      final website = websites[i];

      final productCard = find.byWidgetPredicate((widget) {
        return widget is ProductCard && widget.products[i]['image'] == image;
      }).first;
      await tester.pumpAndSettle(const Duration(seconds: 1));

      expect(title, titles[i]);
      expect(number, numbers[i]);
      expect(website, websites[i]);
    }
  });
}
