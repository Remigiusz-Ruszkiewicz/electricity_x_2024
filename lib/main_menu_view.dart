import 'package:easy_localization/easy_localization.dart';
import 'package:electricity_x_2024/base/page_widget.dart';
import 'package:flutter/material.dart';

import 'generated/locale_keys.g.dart';

class MainMenuView extends StatelessWidget {
  const MainMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      title: LocaleKeys.mainMenu.tr(),
      topWidget: const Center(
        child: Text('pusto'),
      ),
    );
  }
}
