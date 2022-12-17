import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({required this.color, required this.content, Key? key}) : super(key: key);

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
