import 'package:dcce_handbook/pages/card_destinations/first_year_first_semester_screen.dart';
import 'package:dcce_handbook/pages/card_destinations/first_year_second_semester_screen.dart';
import 'package:dcce_handbook/widgets/common_app_bar.dart';
import 'package:dcce_handbook/widgets/common_year_screen.dart';
import 'package:flutter/material.dart';
import '../../widgets/common_tab_text.dart';

class FirstYearScreen extends StatelessWidget {
  const FirstYearScreen({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: CommonYearScreen(
              title: title,
              tabs: const [
                CommonTabText(text: "First Semester"),
                CommonTabText(text: "Second Semester"),
              ],
              tabViewChildren: const [
                FirstYearFirstSemester(title: "Second Year First Semester"),
                FirstYearSecondSemester(title: "Second Year Second Semester"),
              ])
        ),
      ),
    );
  }
}
