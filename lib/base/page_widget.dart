import 'package:flutter/material.dart';

import '../customWidgets/custom_appbar.dart';

class PageWidget extends StatelessWidget {
  const PageWidget({
    required this.title,
    required this.topWidget,
    this.midWidget,
    this.bottomWidget,
    Key? key,
  }) : super(key: key);

  final String title;
  final Widget topWidget;
  final Widget? midWidget;
  final Widget? bottomWidget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: title,
        settingVisible: false,
      ),
      body: SingleChildScrollView(
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
    );
  }
}
