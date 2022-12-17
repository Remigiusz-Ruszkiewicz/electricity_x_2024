import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'base/page_widget.dart';
import 'generated/locale_keys.g.dart';

class IntermediatesPanel extends StatelessWidget {
  const IntermediatesPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      title: LocaleKeys.intermediates.tr(),
      topWidget: Container(
        color: Colors.amber,
        width: 300,
        height: 200,
      ),
      midWidget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('data1'),
          Text('data2'),
          Text('data3'),
        ],
      ),
      bottomWidget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('data1'),
          Text('data2'),
          Text('data3'),
        ],
      ),
    );
  }
}
