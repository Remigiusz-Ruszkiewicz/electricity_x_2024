import 'package:electricity_x_2024/customWidgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class GiverPanel extends StatefulWidget {
  const GiverPanel({Key? key}) : super(key: key);

  @override
  State<GiverPanel> createState() => _GiverPanelState();
}

class _GiverPanelState extends State<GiverPanel> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'GiverPanel', settingVisible: false,),
      body: GestureDetector(
        onTap: () {
        },
      ),
    );
  }
}
