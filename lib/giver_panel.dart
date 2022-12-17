import 'package:easy_localization/easy_localization.dart';
import 'package:electricity_x_2024/customWidgets/custom_card.dart';
import 'package:flutter/material.dart';

import 'base/page_widget.dart';
import 'generated/locale_keys.g.dart';

class GiverPanel extends StatelessWidget {
  const GiverPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      title: LocaleKeys.giver.tr(),
      topWidget: Container(
        color: Colors.amber,
        width: 300,
        height: 200,
      ),
      midWidget: _getCard('W tym tygodniu wyprodukowałeś 23232kWh eko energii!'),
      bottomWidget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: _getCard('Odsprzedałeś 456kWh'),
          ),
          Expanded(
            child: _getCard('Zarobiłeś 1111zł'),
          ),
        ],
      ),
    );
  }

  Widget _getCard(String text) {
    return CustomCard(
      color: Colors.green,
      content: SizedBox(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
