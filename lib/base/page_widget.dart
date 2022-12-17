import 'package:easy_localization/easy_localization.dart';
import 'package:electricity_x_2024/main_menu_view.dart';
import 'package:electricity_x_2024/user_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../customWidgets/custom_appbar.dart';
import '../generated/locale_keys.g.dart';
import '../giver_panel.dart';
import '../taker_panel.dart';

class PageWidget extends StatelessWidget {
  const PageWidget({
    required this.title,
    required this.topWidget,
    this.midWidget,
    this.bottomWidget,
    this.settingVisible = false,
    Key? key,
  }) : super(key: key);

  final String title;
  final Widget topWidget;
  final Widget? midWidget;
  final Widget? bottomWidget;
  final bool settingVisible;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: title,
        settingVisible: settingVisible,
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: topWidget,
                ),
                if (midWidget != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: midWidget,
                  ),
                if (bottomWidget != null) bottomWidget!,
              ],
            ),
          ),
        ),
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
        onClose: () => {},
        elevation: 8.0,
        shape: const CircleBorder(),
        children: [
          _getFixedChild(
            context,
            icon: SvgPicture.asset(
              'assets/images/account_circle.svg',
              color: Colors.white,
              width: 25,
              height: 25,
            ),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            label: LocaleKeys.intermediates.tr(),
            targetView: const IntermediatesPanel(),
          ),
          _getFixedChild(
            context,
            icon: SvgPicture.asset(
              'assets/images/ev_station.svg',
              color: Colors.white,
              width: 25,
              height: 25,
            ),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            label: LocaleKeys.giver.tr(),
            targetView: const GiverPanel(),
          ),
          _getFixedChild(
            context,
            icon: SvgPicture.asset(
              'assets/images/battery_charging.svg',
              color: Colors.white,
              width: 25,
              height: 25,
            ),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            label: LocaleKeys.taker.tr(),
            targetView: const TakerPanel(),
          ),
        ],
      ),
    );
  }

  SpeedDialChild _getFixedChild(
    BuildContext context, {
    required Widget icon,
    required final Color? backgroundColor,
    required final Color? foregroundColor,
    required String label,
    required Widget targetView,
  }) {
    if (title == label) {
      targetView = const MainMenuView();
      label = LocaleKeys.mainMenu.tr();
      icon = const Icon(Icons.home);
    }

    return SpeedDialChild(
      child: icon,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      label: label,
      labelStyle: const TextStyle(fontSize: 18.0),
      onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => targetView)),
    );
  }
}
