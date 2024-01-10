import 'package:dcce_handbook/pages/card_destinations/second_year_first_semester_screen.dart';
import 'package:dcce_handbook/pages/card_destinations/second_year_second_semester_screen.dart';
import 'package:flutter/cupertino.dart';
import '../../widgets/common_tab_text.dart';
import '../../widgets/common_year_screen.dart';

class SecondYearScreen extends StatelessWidget {
  const SecondYearScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return CommonYearScreen(
        title: title,
        tabs: const [
          CommonTabText(text: "First Semester"),
          CommonTabText(text: "Second Semester"),
        ],
        tabViewChildren: const [
          SecondYearFirstSemester(title: "Second Year First Semester"),
          SecondYearSecondSemester(title: "Second Year Second Semester"),
        ]);
  }
}

