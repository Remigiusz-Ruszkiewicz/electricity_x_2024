import 'package:flutter/material.dart';

class DividerWithChild extends StatelessWidget {
  const DividerWithChild(this.child, {Key? key}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(thickness: 1),
        child,
      ],
    );
  }
}
