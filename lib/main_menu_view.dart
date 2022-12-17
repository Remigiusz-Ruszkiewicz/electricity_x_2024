import 'package:electricity_x_2024/base/page_widget.dart';
import 'package:electricity_x_2024/customWidgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

import 'generated/locale_keys.g.dart';

class MainMenuView extends StatelessWidget {
  const MainMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widgetList = getMidWidgets();
    return PageWidget(
      title: LocaleKeys.mainMenu,
      settingVisible: true,
      topWidget: SlideAnimation(
        slideType: SlideType.slide_in_top,
        child: const Center(
          child: Text(
            'Witaj Krzysztof! Dziekujemy ze jestes z nami',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32),
          ),
        ),
      ),
      midWidget: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowIndicator();
          return false;
        },
        child: ListView.builder(
          primary: false,
          shrinkWrap: true,
          itemCount: widgetList.length,
          itemBuilder: (context, index) {
            final dupa = 300 * index;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SlideAnimation(
                delay: Duration(milliseconds: dupa),
                slideType: index.isEven ? SlideType.slide_in_right : SlideType.slide_in_left,
                child: widgetList[index],
              ),
            );
          },
        ),
      ),
    );
  }

  List<Widget> getMidWidgets() => [
        const _MiddleWidget('Dziękujemy, że jesteś z nami już 369 dni'),
        const _MiddleWidget('Razem oszczędziliśmy 20950zł'),
        const _MiddleWidget('W tym miesiącu udało ci się wyprodukować 1500kWh energii z odnawialnych źródeł'),
        const _MiddleWidget('Dziękujemy że razem z nami przyczyniasz sie do ratowania planety!'),
      ];
}

class _MiddleWidget extends StatelessWidget {
  const _MiddleWidget(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return getCard(text, color: const Color.fromRGBO(0, 192, 75, .2));
  }
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
