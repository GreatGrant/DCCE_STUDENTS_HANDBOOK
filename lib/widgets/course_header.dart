import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseHeader extends StatelessWidget {
  final String title;

  const CourseHeader(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration:  BoxDecoration(
          color: const Color.fromARGB(255, 38, 48, 145),
          borderRadius: BorderRadius.circular(8)
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            backgroundColor: Color.fromARGB(255, 38, 48, 145),
            fontFamily: "montserrat"
          ),
        ),
      ),
    );
  }
}
