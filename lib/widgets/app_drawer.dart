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
            leading: const ListTileIcon(icon: Icons.home),
            title: ListTileText(text: "Home", drawerSelection: _drawerSelection, currentSelection: DrawerSelection.home,),
            selected: _drawerSelection  == DrawerSelection.home,
            selectedTileColor: _drawerSelection == DrawerSelection.home ? Colors.deepPurple.shade100: null,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.home); // Update the selected item
            },
          ),
          ListTile(
            leading: const ListTileIcon(icon: Icons.history_edu),
            title: ListTileText(text: "History", drawerSelection: _drawerSelection, currentSelection: DrawerSelection.history),
            selected: _drawerSelection == DrawerSelection.history,
            selectedTileColor: Theme.of(context).highlightColor,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.history);
            },
          ),ListTile(
            leading: const ListTileIcon(icon: Icons.sticky_note_2),
            title: ListTileText(text: "Philosophy", drawerSelection: _drawerSelection, currentSelection: DrawerSelection.philosophy),
            selected: _drawerSelection == DrawerSelection.philosophy,
            selectedTileColor: Theme.of(context).highlightColor,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.philosophy);
            },
          ),ListTile(
            leading: const ListTileIcon(icon: Icons.menu_book),
            title: ListTileText(text: "Exam Guidelines", drawerSelection: _drawerSelection, currentSelection: DrawerSelection.exam_guidelines),
            selected: _drawerSelection == DrawerSelection.exam_guidelines,
            selectedTileColor: Theme.of(context).highlightColor,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.exam_guidelines);
            },
          ),ListTile(
            leading: const ListTileIcon(icon: Icons.safety_check),
            title: ListTileText(text: "Academic Regulation", drawerSelection: _drawerSelection,currentSelection: DrawerSelection.academic_regulation),
            selected: _drawerSelection == DrawerSelection.academic_regulation,
            selectedTileColor: Theme.of(context).highlightColor,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.academic_regulation);
            },
          ),ListTile(
            leading: const ListTileIcon(icon: Icons.settings),
            title: ListTileText(text: "Admission Requirements", drawerSelection: _drawerSelection, currentSelection: DrawerSelection.admission_req),
            selected: _drawerSelection == DrawerSelection.admission_req,
            selectedTileColor: Theme.of(context).highlightColor,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.academic_regulation);
            },
          ),ListTile(
            leading: const ListTileIcon(icon: Icons.access_time),
            title: ListTileText(text: "Course Duration", drawerSelection: _drawerSelection, currentSelection: DrawerSelection.course_duration),
            selected: _drawerSelection == DrawerSelection.course_duration,
            selectedTileColor: Theme.of(context).highlightColor,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.course_duration);
            },
          ),
          ListTile(
            leading: const ListTileIcon(icon: Icons.rate_review),
            title: ListTileText(text: "Grading", drawerSelection: _drawerSelection, currentSelection: DrawerSelection.grading),
            selected: _drawerSelection == DrawerSelection.grading,
            selectedTileColor: Theme.of(context).highlightColor,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.grading);
            },
          ),ListTile(
            leading: const ListTileIcon(icon: Icons.person),
            title: ListTileText(text: "Staff & Management", drawerSelection: _drawerSelection, currentSelection: DrawerSelection.staff),
            selected: _drawerSelection == DrawerSelection.staff,
            selectedTileColor: Theme.of(context).highlightColor,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.staff);
            },
          ),

        ],
      ),
    );
  }
}
