import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    this.color,
    required this.content,
    Key? key,
  }) : super(key: key);

  final Color? color;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color ?? const Color.fromRGBO(0, 192, 75, .2),
      elevation: 0,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: Color.fromRGBO(0, 192, 75, .2)),
      ),
      child: content,
    );
  }
}

Widget getCard(String text, {Color? color}) {
  return CustomCard(
    color: color,
    content: SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),
    ),
  );
}
