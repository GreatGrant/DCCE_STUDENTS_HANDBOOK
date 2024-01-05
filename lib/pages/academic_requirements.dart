import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AcademicRequirements extends StatelessWidget {
  const AcademicRequirements({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title)
        ],
      ),
    );
  }
}
