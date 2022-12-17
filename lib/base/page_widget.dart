import 'package:easy_localization/easy_localization.dart';
import 'package:electricity_x_2024/main_menu_view.dart';
import 'package:electricity_x_2024/map_panel.dart';
import 'package:electricity_x_2024/user_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../customWidgets/custom_appbar.dart';
import '../customWidgets/divider_with_child.dart';
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
    this.enableSideTopPadding = true,
    Key? key,
  }) : super(key: key);

  final String title;
  final Widget topWidget;
  final Widget? midWidget;
  final Widget? bottomWidget;
  final bool settingVisible;
  final bool enableSideTopPadding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: title.tr(),
        settingVisible: settingVisible,
        gradientColors: getGradientColors(title),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage("assets/images/logo.png"),
            fit: BoxFit.cover,
            opacity: 0.1,
          ),
        ),
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowIndicator();
            return false;
          },
          child: SingleChildScrollView(
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: enableSideTopPadding ? const EdgeInsets.symmetric(horizontal: 16) : EdgeInsets.zero,
                      child: topWidget,
                    ),
                    if (midWidget != null) DividerWithChild(midWidget!),
                    if (bottomWidget != null) DividerWithChild(bottomWidget!),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.menu,
        activeIcon: Icons.close,
        backgroundColor: _getSpeedDialColor(),
        foregroundColor: Colors.white,
        activeBackgroundColor: _getSpeedDialColor(),
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
              'assets/images/contact_mail.svg',
              color: Colors.white,
              width: 25,
              height: 25,
            ),
            foregroundColor: Colors.white,
            label: LocaleKeys.intermediates,
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
            foregroundColor: Colors.white,
            label: LocaleKeys.giver,
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
            foregroundColor: Colors.white,
            label: LocaleKeys.taker,
            targetView: const TakerPanel(),
          ),
          _getFixedChild(
            context,
            icon: SvgPicture.asset(
              'assets/images/map.svg',
              color: Colors.white,
              width: 25,
              height: 25,
            ),
            foregroundColor: Colors.white,
            label: LocaleKeys.mapPanel,
            targetView: const MapPanel(),
          ),
        ],
      ),
    );
  }

  List<Color> getGradientColors(String title) {
    switch (title) {
      case LocaleKeys.taker:
        return [
          const Color.fromRGBO(255, 87, 34, .8),
          const Color.fromRGBO(255, 87, 34, .7),
          const Color.fromRGBO(255, 87, 34, .5),
          const Color.fromRGBO(255, 87, 34, .3),
          const Color.fromRGBO(255, 87, 34, .2),
        ];
      case LocaleKeys.giver:
        return [
          const Color.fromRGBO(33, 150, 243, .8),
          const Color.fromRGBO(33, 150, 243, .7),
          const Color.fromRGBO(33, 150, 243, .5),
          const Color.fromRGBO(33, 150, 243, .3),
          const Color.fromRGBO(33, 150, 243, .2),
        ];
      case LocaleKeys.mapPanel:
        return [
          const Color.fromRGBO(255, 193, 7, .8),
          const Color.fromRGBO(255, 193, 7, .7),
          const Color.fromRGBO(255, 193, 7, .5),
          const Color.fromRGBO(255, 193, 7, .3),
          const Color.fromRGBO(255, 193, 7, .2),
        ];
      case LocaleKeys.intermediates:
        return [
          const Color.fromRGBO(244, 67, 54, .8),
          const Color.fromRGBO(244, 67, 54, .7),
          const Color.fromRGBO(244, 67, 54, .5),
          const Color.fromRGBO(244, 67, 54, .3),
          const Color.fromRGBO(244, 67, 54, .2),
        ];
      default:
        return [
          const Color.fromRGBO(0, 192, 75, .8),
          const Color.fromRGBO(0, 192, 75, .7),
          const Color.fromRGBO(0, 180, 75, .5),
          const Color.fromRGBO(0, 145, 75, .3),
          const Color.fromRGBO(0, 120, 75, .2),
        ];
    }
  }

  SpeedDialChild _getFixedChild(
    BuildContext context, {
    required Widget icon,
    required final Color? foregroundColor,
    required String label,
    required Widget targetView,
  }) {
    if (title == label) {
      targetView = const MainMenuView();
      label = LocaleKeys.mainMenu;
      icon = const Icon(Icons.home);
    }

    Color backgroundColor;
    switch (targetView.runtimeType) {
      case TakerPanel:
        backgroundColor = Colors.deepOrange;
        break;
      case GiverPanel:
        backgroundColor = Colors.blue;
        break;
      case MapPanel:
        backgroundColor = Colors.amber;
        break;
      case IntermediatesPanel:
        backgroundColor = Colors.red;
        break;
      default:
        backgroundColor = Colors.green;
        break;
    }

    return SpeedDialChild(
      child: icon,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      label: label.tr(),
      labelStyle: const TextStyle(fontSize: 18.0),
      onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => targetView)),
    );
  }

  MaterialColor _getSpeedDialColor() {
    switch (title) {
      case LocaleKeys.taker:
        return Colors.deepOrange;
      case LocaleKeys.giver:
        return Colors.blue;
      case LocaleKeys.mapPanel:
        return Colors.amber;
      case LocaleKeys.intermediates:
        return Colors.red;
      default:
        return Colors.green;
    }
  }
}
