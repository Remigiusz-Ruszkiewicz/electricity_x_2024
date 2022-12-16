import 'package:electricity_x_2024/customWidgets/custom_appbar.dart';
import 'package:electricity_x_2024/taker_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class MainMenuView extends StatefulWidget {
  const MainMenuView({Key? key}) : super(key: key);

  @override
  State<MainMenuView> createState() => _MainMenuViewState();
}

class _MainMenuViewState extends State<MainMenuView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'MainManu',
        settingVisible: false,
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.menu,
        activeIcon: Icons.close,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        activeBackgroundColor: Colors.green,
        activeForegroundColor: Colors.white,
        visible: true,
        closeManually: false,
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => {},
        //print('OPENING DIAL'),
        onClose: () => {},
        //print('DIAL CLOSED'),

        elevation: 8.0,
        shape: const CircleBorder(),

        children: [
          SpeedDialChild(
            //speed dial child
            child: const Icon(Icons.accessibility),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            label: 'Profil',
            labelStyle: const TextStyle(fontSize: 18.0),
            onTap: () => {},
            //print('FIRST CHILD'),
            onLongPress: () => {}, //print('FIRST CHILD LONG PRESS'),
          ),
          SpeedDialChild(
            child: const Icon(Icons.brush),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            label: 'Dawca',
            labelStyle: const TextStyle(fontSize: 18.0),
            onTap: () => {},
            //print('SECOND CHILD'),
            onLongPress: () => {}, //print('SECOND CHILD LONG PRESS'),
          ),
          SpeedDialChild(
            child: const Icon(Icons.keyboard_voice),
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
            label: 'Biorca',
            labelStyle: const TextStyle(fontSize: 18.0),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TakerPanel())),
            onLongPress: () => {}, //print('THIRD CHILD LONG PRESS'),
          ),

          //add more menu item children here
        ],
      ),
      body: GestureDetector(
        onTap: () {
          //FocusScope.of(context).requestFocus(FocusNode());
        },
      ),
    );
  }
}
