import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    this.color = const Color.fromRGBO(100, 255, 110, .3),
    required this.content,
    Key? key,
  }) : super(key: key);

  final Color color;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 10,
      shadowColor: Colors.black,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: Colors.black),
      ),
      child: content,
    );
  }
}

Widget getCard(String text) {
  return CustomCard(
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
              fontSize: 20,
            ),
          ),
        ),
      ),
    ),
  );
}
