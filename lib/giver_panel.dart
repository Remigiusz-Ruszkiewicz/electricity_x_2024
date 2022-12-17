import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'base/page_widget.dart';
import 'customWidgets/custom_card.dart';
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
      midWidget: getCard('W tym tygodniu wyprodukowałeś 23232kWh eko energii!'),
      bottomWidget: Row(
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
    );
  }
}
