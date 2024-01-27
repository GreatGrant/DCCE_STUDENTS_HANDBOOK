import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../widgets/course_contents.dart';
import '../../widgets/course_header.dart';

class FourthYearSecondSemester extends StatefulWidget {
  const FourthYearSecondSemester({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => FourthYearSecondSemesterState();
}

class FourthYearSecondSemesterState extends State<FourthYearSecondSemester> {
  late final WebViewController webViewController;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CourseHeader(
                'EIT430: Student Industrial Work Experience Scheme (SIWES II): (4 Units)',
              ),
              CourseContent(
                content:
                '''Industry linked assignments under direct supervision by members of the faculty are undertaken for a period of six (6) months. The following factors are the basis of assessment of these assignments.''',
              ),
              CourseContent(
                content:
                '''• Basic Industrial Training 
• Design and Make Group Projects 
• Seminar on Group Project 
• Report on Group Project 
• Industrial Design Project
• Report on Industrial Design Project 
• Individual Seminar 
• Assessment by Individual Supervisor 
• Overall Assessment 100%''',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
