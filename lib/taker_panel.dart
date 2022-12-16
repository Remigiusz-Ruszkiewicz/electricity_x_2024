import 'package:flutter/material.dart';

import 'base/page_widget.dart';

class TakerPanel extends StatelessWidget {
  const TakerPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      title: 'Taker',
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
