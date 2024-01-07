import 'package:flutter/material.dart';

Widget buildHeading(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Text(
      text,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: "montserrat"),
    ),
  );
}
