import 'package:dcce_handbook/pages/academic_regulations.dart';
import 'package:dcce_handbook/pages/academic_requirements.dart';
import 'package:dcce_handbook/pages/course_duration.dart';
import 'package:dcce_handbook/pages/exam_guidelines.dart';
import 'package:dcce_handbook/pages/grading.dart';
import 'package:dcce_handbook/pages/history.dart';
import 'package:dcce_handbook/pages/home_page.dart';
import 'package:dcce_handbook/pages/philosophy.dart';
import 'package:dcce_handbook/pages/staff.dart';
import 'package:dcce_handbook/util/drawer_selection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'list_tile_icon.dart';
import 'list_tile_text.dart';

/// A custom drawer widget for the DCCE Student Handbook app.
///
/// This widget displays a drawer that provides navigation options to different
/// sections of the DCCE Student Handbook app. It includes options to navigate
/// to the home screen, history, academic regulations, course duration, exam guidelines,
/// grading, philosophy, staff and management pages.
///
class AppDrawer extends StatefulWidget {
  /// The initial selection for the drawer.
  ///
  /// This parameter determines which item in the drawer is initially selected
  /// when the drawer is first displayed. It should be one of the values from
  /// the [DrawerSelection] enum.
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

    Widget destinationScreen;
    String title;

    // Determine the destination screen and title based on the selected drawer item
    switch (currentDrawerSelection) {
      case DrawerSelection.home:
        destinationScreen = const HomePage(title: "Home");
        title = "Home";
        break;
      case DrawerSelection.history:
        destinationScreen = const HistoryScreen(title: "History");
        title = "History";
        break;
      case DrawerSelection.philosophy:
        destinationScreen = const PhilosophyScreen(title: "Philosophy");
        break;
      case DrawerSelection.examGuidelines:
        destinationScreen = const ExamGuidelinesScreen(title: "Exam Guide");
        break;
      case DrawerSelection.academicRegulation:
        destinationScreen = const AcademicRegulationsScreen(title: "Academic Regulation");
        break;
      case DrawerSelection.admissionReq:
        destinationScreen = const AdmissionRequirementsScreen(title: "Admission Requirements");
        break;
      case DrawerSelection.courseDuration:
        destinationScreen = const CourseDurationScreen(title: "Course Duration");
        break;
      case DrawerSelection.grading:
        destinationScreen = const GradingScreen(title: "Grading");
        break;
      default:
        destinationScreen = const StaffScreen(title: "Staff");
        title = "Staff";
    }

    // Navigate to the selected screen with a fade transition animation
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => destinationScreen,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );

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
                  Text(
                    "DCCE Student Handbook",
                    style: GoogleFonts.montserrat(fontSize: 20),
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
                currentSelection: DrawerSelection.examGuidelines
            ),
            title: ListTileText(
                text: "Exam Guidelines",
                drawerSelection: _drawerSelection,
                currentSelection: DrawerSelection.examGuidelines
            ),
            selected: _drawerSelection == DrawerSelection.examGuidelines,
            selectedTileColor: _drawerSelection == DrawerSelection.examGuidelines ? Colors.deepPurple.shade100: null,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.examGuidelines);
            },
          ),ListTile(
            leading: ListTileIcon(
                icon: Icons.safety_check,
                drawerSelection: _drawerSelection,
                currentSelection: DrawerSelection.academicRegulation
            ),
            title: ListTileText(text: "Academic Regulation", drawerSelection: _drawerSelection,currentSelection: DrawerSelection.academicRegulation),
            selected: _drawerSelection == DrawerSelection.academicRegulation,
            selectedTileColor: _drawerSelection == DrawerSelection.academicRegulation ? Colors.deepPurple.shade100: null,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.academicRegulation);
            },
          ),ListTile(
            leading: ListTileIcon(
                icon: Icons.settings,
                drawerSelection: _drawerSelection,
                currentSelection: DrawerSelection.admissionReq),
            title: ListTileText(text: "Admission Requirements",
                drawerSelection: _drawerSelection,
                currentSelection: DrawerSelection.admissionReq),
            selected: _drawerSelection == DrawerSelection.admissionReq,
            selectedTileColor: _drawerSelection == DrawerSelection.admissionReq ? Colors.deepPurple.shade100: null,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.admissionReq);
            },
          ),ListTile(
            leading: ListTileIcon(
                icon: Icons.access_time,
                drawerSelection: _drawerSelection,
                currentSelection: DrawerSelection.academicRegulation),
            title: ListTileText(
                text: "Course Duration",
                drawerSelection: _drawerSelection,
                currentSelection: DrawerSelection.courseDuration
            ),
            selected: _drawerSelection == DrawerSelection.courseDuration,
            selectedTileColor: _drawerSelection == DrawerSelection.courseDuration ? Colors.deepPurple.shade100: null,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.courseDuration);
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
