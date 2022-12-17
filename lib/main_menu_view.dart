import 'package:easy_localization/easy_localization.dart';
import 'package:electricity_x_2024/base/page_widget.dart';
import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

import 'generated/locale_keys.g.dart';

class MainMenuView extends StatelessWidget {
  const MainMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widgetList = getMidWidgets();
    return PageWidget(
      title: LocaleKeys.mainMenu.tr(),
      settingVisible: true,
      topWidget: SlideAnimation(
        slideType: SlideType.slide_in_top,
        child: const Center(
            child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text(
            'Witaj Krzysztof! Dziekujemy ze jestes z nami',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32),
          ),
        )),
      ),
      midWidget: ListView.builder(
        shrinkWrap: true,
        itemCount: widgetList.length,
        itemBuilder: (context, index) {
          final dupa = 300 * index;
          return SlideAnimation(
            delay: Duration(milliseconds: dupa),
            slideType: index.isEven ? SlideType.slide_in_right : SlideType.slide_in_left,
            child: widgetList[index],
          );
        },
      ),
    );
  }

  List<Widget> getMidWidgets() => [
        const Card(
          color: Colors.green,
          elevation: 16,
          shadowColor: Colors.green,
          margin: EdgeInsets.all(16),
          child: Text(
            'Oszczedziles dzisiaj 2137 zł!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
        ),
        Card(
          color: Colors.black.withOpacity(.6),
          elevation: 16,
          margin: const EdgeInsets.all(16),
          shadowColor: Colors.green,
          child: Container(
            padding: EdgeInsets.all(8),
            child: const Text(
              'Oszczedziles dzisiaj 2137 zł!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        const Card(
          color: Colors.green,
          elevation: 16,
          shadowColor: Colors.green,
          margin: EdgeInsets.all(16),
          child: Text(
            'Oszczedziles dzisiaj 2137 zł!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
        ),
        const Card(
          color: Colors.green,
          elevation: 16,
          shadowColor: Colors.green,
          margin: EdgeInsets.all(16),
          child: Text(
            'Oszczedziles dzisiaj 2137 zł!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
        ),
        const Card(
          color: Colors.green,
          elevation: 16,
          shadowColor: Colors.green,
          margin: EdgeInsets.all(16),
          child: Text(
            'Oszczedziles dzisiaj 2137 zł!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
        ),
        const Card(
          color: Colors.green,
          elevation: 16,
          shadowColor: Colors.green,
          margin: EdgeInsets.all(16),
          child: Text(
            'Oszczedziles dzisiaj 2137 zł!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ];
}

class SlideAnimation extends StatelessWidget {
  SlideAnimation({Key? key, required this.child, required this.slideType, this.delay = const Duration(seconds: 0)})
      : super(key: key);
  final SpringController springController = SpringController();
  final Widget child;
  final SlideType slideType;
  final Duration delay;

  @override
  Widget build(BuildContext context) {
    return Spring.slide(
      springController: springController,
      delay: delay,
      slideType: slideType,
      animDuration: const Duration(milliseconds: 500),
      curve: Curves.easeInExpo,
      extend: 0,
      withFade: true,
      child: child,
    );
  }
}
