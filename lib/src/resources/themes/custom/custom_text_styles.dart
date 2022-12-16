import 'package:flutter/material.dart';

class CustomTextStyles {
  final TextStyle text10WithUnderline = const TextStyle(
    fontSize: 10,
    decoration: TextDecoration.underline,
  );
  final TextStyle text10 = const TextStyle(
    fontSize: 10,
  );
  final TextStyle text20 = const TextStyle(
    fontSize: 20,
  );
  final InputDecoration textBoxDecoration = const InputDecoration(
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 2,
        color: Color.fromRGBO(54, 53, 53, 1),
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 2,
        color: Color.fromRGBO(54, 53, 53, 1),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 2,
        color: Color.fromRGBO(54, 53, 53, 1),
      ),
    ),
  );
}
