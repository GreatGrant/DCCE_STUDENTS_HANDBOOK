import 'package:dcce_handbook/pages/card_destinations/third_year_first_semester_screen.dart';
import 'package:dcce_handbook/pages/card_destinations/third_year_second_semester_screen.dart';
import 'package:flutter/cupertino.dart';
import '../../widgets/common_tab_text.dart';
import '../../widgets/common_year_screen.dart';

class ThirdYearScreen extends StatelessWidget {
  const ThirdYearScreen({super.key, required this.title});
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
          ThirdYearFirstSemester(title: "Third Year First Semester"),
          ThirdYearSecondSemester(title: "Third Year Second Semester"),
        ]);
  }
}
