import 'package:flutter/cupertino.dart';
import '../../widgets/common_tab_text.dart';
import '../../widgets/common_year_screen.dart';
import 'fourth_year_first_semester_screen.dart';
import 'fourth_year_second_semester_screen.dart';

class FourthYearScreen extends StatelessWidget {
  const FourthYearScreen({super.key, required this.title});
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
          FourthYearFirstSemester(title: "Second Year First Semester"),
          FourthYearSecondSemester(title: "Second Year Second Semester"),
        ]);
  }
}
