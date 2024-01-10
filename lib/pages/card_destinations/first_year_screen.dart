import 'package:dcce_handbook/pages/card_destinations/first_year_first_semester_screen.dart';
import 'package:dcce_handbook/pages/card_destinations/first_year_second_semester_screen.dart';
import 'package:dcce_handbook/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';

class FirstYearScreen extends StatelessWidget {
  const FirstYearScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CommonAppBar(
          title: title,
          tabs:  const [
            Text("First Semester",
              style: TextStyle(
                fontFamily: "montserrat",
                fontWeight: FontWeight.bold,
            ),
            ),
            Text(
              "Second Semester",
              style: TextStyle(
                fontFamily: "montserrat",
                fontWeight: FontWeight.bold,
            ),),
          ],
        ),
        body: const TabBarView(
          children: [
            FirstYearFirstSemester(title: "Fresh Year First Semester"),
            FirstYearSecondSemester(title: "Fresh Year Second Semester")
          ],
        ),
      ),
    );
  }
}
