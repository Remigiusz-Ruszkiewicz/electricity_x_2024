import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'base/page_widget.dart';
import 'customWidgets/custom_card.dart';
import 'generated/locale_keys.g.dart';

class GiverPanel extends StatelessWidget {
  const GiverPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      title: LocaleKeys.giver,
      enableSideTopPadding: false,
      topWidget: Align(
        alignment: Alignment.topCenter,
        child: CarouselSlider(
          items: const [
            Image(image: AssetImage('assets/images/energy_income.png')),
            Image(image: AssetImage('assets/images/energy_outcome.png')),
          ],
          options: CarouselOptions(
            autoPlay: true,
            height: 250.0,
            aspectRatio: 16 / 9,
            viewportFraction: 0.80,
            enlargeCenterPage: true,
            pageSnapping: true,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {},
          ),
        ),
      ),
      midWidget: Column(
        children: [
          getCard('W tym tygodniu wyprodukowałeś 23232kWh eko energii!'),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: getCard('Odsprzedałeś 456kWh'),
                ),
                Expanded(
                  child: getCard('Zarobiłeś 1111zł'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
