import 'package:dcce_handbook/util/strings.dart';
import 'package:flutter/material.dart';

import '../widgets/build_drawer.dart';
import '../widgets/common_app_bar.dart';

class GradingScreen extends StatefulWidget {
  const GradingScreen({super.key, required this.title});
  final String title;

  @override
  GradingScreenState createState() => GradingScreenState();
}

class GradingScreenState extends State<GradingScreen> {
  double fontSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(title: "Grading"),
      drawer: buildDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                AppStrings.gradingParagraphString,
                style: TextStyle(fontSize: fontSize),
              ),
            ),
            buildGradeTable(),
          ],
        ),
      ),
    );
  }

  Widget buildGradeTable() {
    return DataTable(
      columns: const [
        DataColumn(label: Text('Score (%)')),
        DataColumn(label: Text('Comment')),
        DataColumn(label: Text('Grade')),
        DataColumn(label: Text('Grade Point (GP)')),
        DataColumn(label: Text('Grade Point Average (GPA)')),
        DataColumn(label: Text('Cumulative Grade Point Average (CGPA)')),
        DataColumn(label: Text('Class Of Degree')),
      ],
      rows: [
        buildGradeRow('70-100', 'Excellent', 'A', '5', 'Obtained by multiplying (1) by GP & dividing by total credit unit', '4.5-5.0', 'First class Hons.'),
        buildGradeRow('60-69', 'Very good', 'B', '4', '', '3.5-4.49', 'Second class Hons. (Upper division)'),
        buildGradeRow('50-59', 'Good', 'C', '3', '', '2.49-3.49', 'Second class (lower) Hons.'),
        buildGradeRow('45-49', 'Fair', 'D', '2', '', '1.5-2.39', 'Third class Hons.'),
        buildGradeRow('40-44', 'Pass', 'E', '1', '', '1.0-1.4', 'Pass'),
        buildGradeRow('0-39', 'Fail', 'F', '0', '', '<1', 'Fail'),
      ],
    );
  }

  DataRow buildGradeRow(String score, String comment, String grade, String gradePoint, String gpa, String cgpa, String classOfDegree) {
    return DataRow(
      onSelectChanged: (selected) {
        if (selected != null && selected) {
          setState(() {
            // Increase font size when a row is touched
            fontSize += 2.0;
          });
        }
      },
      cells: [
        DataCell(Text(score, style: TextStyle(fontSize: fontSize))),
        DataCell(Text(comment, style: TextStyle(fontSize: fontSize))),
        DataCell(Text(grade, style: TextStyle(fontSize: fontSize))),
        DataCell(Text(gradePoint, style: TextStyle(fontSize: fontSize))),
        DataCell(Text(gpa, style: TextStyle(fontSize: fontSize))),
        DataCell(Text(cgpa, style: TextStyle(fontSize: fontSize))),
        DataCell(Text(classOfDegree, style: TextStyle(fontSize: fontSize))),
      ],
    );
  }
}
