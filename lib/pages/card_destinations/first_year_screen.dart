import 'package:dcce_handbook/pages/card_destinations/first_year_first_semester_screen.dart';
import 'package:dcce_handbook/pages/card_destinations/first_year_second_semester_screen.dart';
import 'package:dcce_handbook/widgets/common_year_screen.dart';
import 'package:flutter/material.dart';

class FirstYearScreen extends StatelessWidget {
  const FirstYearScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return CommonYearScreen(
        title: title,
        tabs: const [
          Text(
            "First Semester",
            style: TextStyle(
              fontFamily: "montserrat",
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              "Second Semester",
              style: TextStyle(
                  fontFamily: "montserrat",
                  fontWeight: FontWeight.bold
              ))
        ],
        tabViewChildren: const [
          FirstYearFirstSemester(title: "Second Year First Semester"),
          FirstYearSecondSemester(title: "Second Year Second Semester"),
          ]);
  }
}
