import 'package:easy_localization/easy_localization.dart';
import 'package:electricity_x_2024/customWidgets/card_widget.dart';
import 'package:flutter/material.dart';

import 'base/page_widget.dart';
import 'generated/locale_keys.g.dart';

class IntermediatesPanel extends StatelessWidget {
  const IntermediatesPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      title: LocaleKeys.intermediates.tr(),
      topWidget: const ProductCard(),
    );
  }
}
