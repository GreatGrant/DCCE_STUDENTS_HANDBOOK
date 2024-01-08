
import 'package:dcce_handbook/pages/academic_regulations.dart';
import 'package:dcce_handbook/pages/academic_requirements.dart';
import 'package:dcce_handbook/pages/course_duration.dart';
import 'package:dcce_handbook/pages/curriculum.dart';
import 'package:dcce_handbook/pages/exam_guidelines.dart';
import 'package:dcce_handbook/pages/grading.dart';
import 'package:dcce_handbook/pages/history.dart';
import 'package:dcce_handbook/pages/home_page.dart';
import 'package:dcce_handbook/pages/philosophy.dart';
import 'package:dcce_handbook/pages/staff.dart';
import 'package:flutter/material.dart';

import 'list_tile_icon.dart';
import 'list_tile_text.dart';

Drawer buildDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: Theme.of(context).primaryColor,
    elevation: 8,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
    ),
    child: ListView(
      children: [
        DrawerHeader(
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: 100,
                  width: 100,
                ),
                const Text(
                  "DCCE Student Handbook",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "montserrat"),
                ),
              ],
            ),
          ),
        ),
        ListTile(
          leading: const ListTileIcon(icon: Icons.home),
          title: const ListTileText(text: "Home"),
          onTap: (){
            // Todo() handle navigation.
            Navigator.pop(context);
            Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomePage(title: "HomePage")));

          },
        ),
        ListTile(
          leading: const ListTileIcon(icon: Icons.history_edu),
          title: const ListTileText(text: "History"),
          onTap: (){
            // Todo() handle navigation.
            Navigator.pop(context);
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HistoryScreen(title: "History")
                )
            );
          },
        ),ListTile(
          leading: const ListTileIcon(icon: Icons.sticky_note_2),
          title: const ListTileText(text: "Philosophy"),
          onTap: (){
            // Todo() handle navigation.
            Navigator.pop(context);
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const PhilosophyScreen(title: "Philosophy")
                )
            );

          },
        ),ListTile(
          leading: const ListTileIcon(icon: Icons.menu_book),
          title: const ListTileText(text: "Exam Guidelines"),
          onTap: (){
            // Todo() handle navigation.
            Navigator.pop(context);
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ExamGuidelinesScreen(title: "Exam Guidelines")
                )
            );
          },
        ),ListTile(
          leading: const ListTileIcon(icon: Icons.safety_check),
          title: const ListTileText(text: "Academic Regulation"),
          onTap: (){
            // Todo() handle navigation.
            Navigator.pop(context);
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AcademicRegulationsScreen(
                    title: "Academic Regulations"
                )
                )
            );
          },
        ),ListTile(
          leading: const ListTileIcon(icon: Icons.settings),
          title: const ListTileText(text: "Admission Requirements"),
          onTap: (){
            // Todo() handle navigation.
            Navigator.pop(context);
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AcademicRequirementsScreen(
                    title: "Academic Requirements"
                )
                )
            );
          },
        ),ListTile(
          leading: const ListTileIcon(icon: Icons.access_time),
          title: const ListTileText(text: "Course Duration"),
          onTap: (){
            // Todo() handle navigation.
            Navigator.pop(context);
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const CourseDurationScreen(
                    title: "Course Duration"
                )
                )
            );
          },
        ),
        ListTile(
          leading: const ListTileIcon(icon: Icons.rate_review),
          title: const ListTileText(text: "Grading"),
          onTap: (){
            Navigator.pop(context);
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const GradingScreen(title: "Grading")
                )
            );

          },
        ),ListTile(
          leading: const ListTileIcon(icon: Icons.person),
          title: const ListTileText(text: "Staff & Management"),
          onTap: (){
            Navigator.pop(context);
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const StaffScreen(title: "Staff & Management")
                )
            );
          },
        ),

      ],
    ),
  );
}


