import 'package:easy_localization/easy_localization.dart';
import 'package:electricity_x_2024/base/page_widget.dart';
import 'package:flutter/material.dart';

import 'generated/locale_keys.g.dart';

class MapPanel extends StatelessWidget {
  const MapPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      title: LocaleKeys.mapPanel.tr(),
      topWidget: Text('topWidget'),
    );
  }
}
