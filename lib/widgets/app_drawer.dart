import 'package:dcce_handbook/pages/academic_regulations.dart';
import 'package:dcce_handbook/pages/academic_requirements.dart';
import 'package:dcce_handbook/pages/course_duration.dart';
import 'package:dcce_handbook/pages/exam_guidelines.dart';
import 'package:dcce_handbook/pages/grading.dart';
import 'package:dcce_handbook/pages/history.dart';
import 'package:dcce_handbook/pages/home_page.dart';
import 'package:dcce_handbook/pages/philosophy.dart';
import 'package:dcce_handbook/pages/staff.dart';
import 'package:dcce_handbook/util/DrawerSelection.dart';
import 'package:flutter/material.dart';
import 'list_tile_icon.dart';
import 'list_tile_text.dart';

class AppDrawer extends StatefulWidget {
  final DrawerSelection initialSelection;
  const AppDrawer({super.key, required this.initialSelection});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  late DrawerSelection _drawerSelection;

  @override
  void initState() {
    _drawerSelection = widget.initialSelection;
    super.initState();
  }

  void _setSelectedNavItem(DrawerSelection currentDrawerSelection) {
    // Check if the current screen is already selected
    if (_drawerSelection == currentDrawerSelection) {
      Navigator.pop(context); // Close the drawer
      return; // Do not navigate again to the same screen
    }

    setState(() {
      _drawerSelection = currentDrawerSelection;
    });


    // Navigate to the selected screen
    switch (currentDrawerSelection) {
      case DrawerSelection.home:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage(title: "Home")),
        );
        break;
      case DrawerSelection.history:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HistoryScreen(title: "History")),
        );
        break;
      case DrawerSelection.philosophy:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const PhilosophyScreen(title: "Philosophy")),
        );
        break;
      case DrawerSelection.exam_guidelines:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ExamGuidelinesScreen(title: "Exam Guidelines")),
        );
        break;
      case DrawerSelection.academic_regulation:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const AcademicRegulationsScreen(title: "Academic Regulation")),
        );
        break;
      case DrawerSelection.admission_req:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const AdmissionRequirementsScreen(title: "Admission Requirements")),
        );
        break;
      case DrawerSelection.course_duration:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const CourseDurationScreen(title: "Course Duration")),
        );
        break;
      case DrawerSelection.grading:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const GradingScreen(title: "Admission Requirements")),
        );
        break;
      default:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const StaffScreen(title: "Staff")),
        );
    }

    // Clear the backstack when navigating to a new screen
    Navigator.popUntil(context, (route) => route.isFirst);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).canvasColor,
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
            leading: ListTileIcon(
                icon: Icons.home,
                drawerSelection: _drawerSelection,
                currentSelection: DrawerSelection.home
            ),
            title: ListTileText(
              text: "Home", drawerSelection: _drawerSelection,
              currentSelection: DrawerSelection.home
            ),
            selected: _drawerSelection  == DrawerSelection.home,
            selectedTileColor: _drawerSelection == DrawerSelection.home ? Colors.deepPurple.shade100: null,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.home); // Update the selected item
            },
          ),
          ListTile(
            leading: ListTileIcon(
                icon: Icons.history_edu,
                drawerSelection: _drawerSelection,
                currentSelection: DrawerSelection.history
            ),
            title: ListTileText(
                text: "History",
                drawerSelection: _drawerSelection,
                currentSelection: DrawerSelection.history
            ),
            selected: _drawerSelection == DrawerSelection.history,
            selectedTileColor: _drawerSelection == DrawerSelection.history ? Colors.deepPurple.shade100: null,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.history);
            },
          ),ListTile(
            leading: ListTileIcon(
                icon: Icons.sticky_note_2,
                drawerSelection: _drawerSelection,
                currentSelection: DrawerSelection.philosophy
            ),
            title: ListTileText(
                text: "Philosophy",
                drawerSelection: _drawerSelection,
                currentSelection: DrawerSelection.philosophy
            ),
            selected: _drawerSelection == DrawerSelection.philosophy,
            selectedTileColor: _drawerSelection == DrawerSelection.philosophy ? Colors.deepPurple.shade100: null,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.philosophy);
            },
          ),ListTile(
            leading:ListTileIcon(
                icon: Icons.menu_book,
                drawerSelection: _drawerSelection,
                currentSelection: DrawerSelection.exam_guidelines
            ),
            title: ListTileText(
                text: "Exam Guidelines",
                drawerSelection: _drawerSelection,
                currentSelection: DrawerSelection.exam_guidelines
            ),
            selected: _drawerSelection == DrawerSelection.exam_guidelines,
            selectedTileColor: _drawerSelection == DrawerSelection.exam_guidelines ? Colors.deepPurple.shade100: null,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.exam_guidelines);
            },
          ),ListTile(
            leading: ListTileIcon(
                icon: Icons.safety_check,
                drawerSelection: _drawerSelection,
                currentSelection: DrawerSelection.academic_regulation
            ),
            title: ListTileText(text: "Academic Regulation", drawerSelection: _drawerSelection,currentSelection: DrawerSelection.academic_regulation),
            selected: _drawerSelection == DrawerSelection.academic_regulation,
            selectedTileColor: _drawerSelection == DrawerSelection.academic_regulation ? Colors.deepPurple.shade100: null,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.academic_regulation);
            },
          ),ListTile(
            leading: ListTileIcon(
                icon: Icons.settings,
                drawerSelection: _drawerSelection,
                currentSelection: DrawerSelection.admission_req),
            title: ListTileText(text: "Admission Requirements",
                drawerSelection: _drawerSelection,
                currentSelection: DrawerSelection.admission_req),
            selected: _drawerSelection == DrawerSelection.admission_req,
            selectedTileColor: _drawerSelection == DrawerSelection.admission_req ? Colors.deepPurple.shade100: null,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.admission_req);
            },
          ),ListTile(
            leading: ListTileIcon(
                icon: Icons.access_time,
                drawerSelection: _drawerSelection,
                currentSelection: DrawerSelection.academic_regulation),
            title: ListTileText(
                text: "Course Duration",
                drawerSelection: _drawerSelection,
                currentSelection: DrawerSelection.course_duration
            ),
            selected: _drawerSelection == DrawerSelection.course_duration,
            selectedTileColor: _drawerSelection == DrawerSelection.course_duration ? Colors.deepPurple.shade100: null,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.course_duration);
            },
          ),
          ListTile(
            leading: ListTileIcon(
                icon: Icons.rate_review,
                drawerSelection: _drawerSelection,
                currentSelection: DrawerSelection.grading),
            title: ListTileText(text: "Grading", drawerSelection: _drawerSelection, currentSelection: DrawerSelection.grading),
            selected: _drawerSelection == DrawerSelection.grading,
            selectedTileColor: _drawerSelection == DrawerSelection.grading ? Colors.deepPurple.shade100: null,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.grading);
            },
          ),ListTile(
            leading: ListTileIcon(icon: Icons.person,
              drawerSelection: _drawerSelection,
              currentSelection: DrawerSelection.staff
            ),
            title: ListTileText(
                text: "Staff & Management",
                drawerSelection: _drawerSelection,
                currentSelection: DrawerSelection.staff
            ),
            selected: _drawerSelection == DrawerSelection.staff,
            selectedTileColor: _drawerSelection == DrawerSelection.staff ? Colors.deepPurple.shade200: null,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.staff);
            },
          ),
        ],
      ),
    );
  }
}
