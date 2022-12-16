import 'package:electricity_x_2024/customWidgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class TakerPanel extends StatefulWidget {
  const TakerPanel({Key? key}) : super(key: key);

  @override
  State<TakerPanel> createState() => _TakerPanelState();
}

class _TakerPanelState extends State<TakerPanel> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'TakerPanel', settingVisible: false,),
      body: GestureDetector(
        onTap: () {
        },
      ),
    );
  }
}
