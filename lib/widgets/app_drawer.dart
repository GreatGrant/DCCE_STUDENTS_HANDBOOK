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
  void _setSelectedNavItem(DrawerSelection currentDrawerSelection){
  setState(() {
    _drawerSelection = currentDrawerSelection;
  });
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
            title: const ListTileText(text: "Home"),
            selected: _drawerSelection  == DrawerSelection.home,
            selectedTileColor: _drawerSelection == DrawerSelection.home ? Theme.of(context).highlightColor: null,
            onTap: (){
              Navigator.pop(context);
              _setSelectedNavItem(DrawerSelection.home); // Update the selected item
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                    return const HomePage(title: "Home");
                  }));
            },
          ),
          ListTile(
            leading: const ListTileIcon(icon: Icons.history_edu),
            title: const ListTileText(text: "History"),
            selected: _drawerSelection == DrawerSelection.history,
            selectedTileColor: Theme.of(context).highlightColor,
            onTap: (){
              Navigator.pop(context);
              _setSelectedNavItem(DrawerSelection.history);
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const HistoryScreen(title: "History");
    })
              );
            },
          ),ListTile(
            leading: const ListTileIcon(icon: Icons.sticky_note_2),
            title: const ListTileText(text: "Philosophy"),
            selected: _drawerSelection == DrawerSelection.philosophy,
            selectedTileColor: Theme.of(context).highlightColor,
            onTap: (){
              Navigator.pop(context);
              _setSelectedNavItem(DrawerSelection.philosophy);
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {

                    return const PhilosophyScreen(title: "Philosophy");
                  }
                  )
              );

            },
          ),ListTile(
            leading: const ListTileIcon(icon: Icons.menu_book),
            title: const ListTileText(text: "Exam Guidelines"),
            selected: _drawerSelection == DrawerSelection.exam_guidelines,
            selectedTileColor: Theme.of(context).highlightColor,
            onTap: (){
              Navigator.pop(context);
              _setSelectedNavItem(DrawerSelection.exam_guidelines);
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const ExamGuidelinesScreen(title: "Exam Guidelines");
                    }
                    )
              );
            },
          ),ListTile(
            leading: const ListTileIcon(icon: Icons.safety_check),
            title: const ListTileText(text: "Academic Regulation"),
            selected: _drawerSelection == DrawerSelection.academic_regulation,
            selectedTileColor: Theme.of(context).highlightColor,
            onTap: (){
              Navigator.pop(context);
              _setSelectedNavItem(DrawerSelection.academic_regulation);
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const AcademicRegulationsScreen(
                      title: "Academic Regulations"
                  );
                  }
                  )
              );
            },
          ),ListTile(
            leading: const ListTileIcon(icon: Icons.settings),
            title: const ListTileText(text: "Admission Requirements"),
            selected: _drawerSelection == DrawerSelection.adission_req,
            selectedTileColor: Theme.of(context).highlightColor,
            onTap: (){
              Navigator.pop(context);
              _setSelectedNavItem(DrawerSelection.academic_regulation);
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const AdmissionRequirementsScreen(
                      title: "Academic Requirements"
                  );
                  }
                  )
              );
            },
          ),ListTile(
            leading: const ListTileIcon(icon: Icons.access_time),
            title: const ListTileText(text: "Course Duration"),
            selected: _drawerSelection == DrawerSelection.course_duration,
            selectedTileColor: Theme.of(context).highlightColor,
            onTap: (){
              Navigator.pop(context);
              _setSelectedNavItem(DrawerSelection.course_duration);
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const CourseDurationScreen(
                      title: "Course Duration"
                  );
                  }
                  )
              );
            },
          ),
          ListTile(
            leading: const ListTileIcon(icon: Icons.rate_review),
            title: const ListTileText(text: "Grading"),
            selected: _drawerSelection == DrawerSelection.grading,
            selectedTileColor: Theme.of(context).highlightColor,
            onTap: (){
              Navigator.pop(context);
              _setSelectedNavItem(DrawerSelection.grading);
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const GradingScreen(title: "Grading");
                    }
                    )
              );

            },
          ),ListTile(
            leading: const ListTileIcon(icon: Icons.person),
            title: const ListTileText(text: "Staff & Management"),
            selected: _drawerSelection == DrawerSelection.staff,
            selectedTileColor: Theme.of(context).highlightColor,
            onTap: (){
              _setSelectedNavItem(DrawerSelection.staff);
              Navigator.pop(context);
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const StaffScreen(title: "Staff & Management");
                  }
                  )
              );
            },
          ),

        ],
      ),
    );
  }
}
