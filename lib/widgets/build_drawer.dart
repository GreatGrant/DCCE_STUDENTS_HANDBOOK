
import 'package:flutter/material.dart';

Drawer buildDrawer(BuildContext context) {
  return Drawer(
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
          leading: const Icon(Icons.home),
          title: const Text(
            "Home",
            style: TextStyle(
                fontFamily: "montserrat"
            ),
          ),
          onTap: (){
            // Todo() handle navigation.
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.history_edu),
          title: const Text(
            "History",
            style: TextStyle(
                fontFamily: "montserrat"
            ),
          ),
          onTap: (){
            // Todo() handle navigation.
            Navigator.pop(context);

          },
        ),ListTile(
          leading: const Icon(Icons.sticky_note_2),
          title: const Text(
            "Philosophy",
            style: TextStyle(
                fontFamily: "montserrat"
            ),
          ),
          onTap: (){
            // Todo() handle navigation.
            Navigator.pop(context);

          },
        ),ListTile(
          leading: const Icon(Icons.menu_book),
          title: const Text(
            "Exam Guidelines",
            style: TextStyle(
                fontFamily: "montserrat"
            ),
          ),
          onTap: (){
            // Todo() handle navigation.
            Navigator.pop(context);

          },
        ),ListTile(
          leading: const Icon(Icons.safety_check),
          title: const Text(
            "Academic Regulation",
            style: TextStyle(
                fontFamily: "montserrat"
            ),
          ),
          onTap: (){
            // Todo() handle navigation.
            Navigator.pop(context);

          },
        ),ListTile(
          leading: const Icon(Icons.admin_panel_settings),
          title: const Text(
            "Academic Requirements",
            style: TextStyle(
                fontFamily: "montserrat"
            ),
          ),
          onTap: (){
            // Todo() handle navigation.
            Navigator.pop(context);

          },
        ),ListTile(
          leading: const Icon(Icons.access_time),
          title: const Text(
            "Course Duration",
            style: TextStyle(
                fontFamily: "montserrat"
            ),
          ),
          onTap: (){
            // Todo() handle navigation.
            Navigator.pop(context);

          },
        ),
        ListTile(
          leading: const Icon(Icons.event_note),
          title: const Text(
            "Curriculum",
            style: TextStyle(
                fontFamily: "montserrat"
            ),
          ),
          onTap: (){
            // Todo() handle navigation.
            Navigator.pop(context);

          },
        ),ListTile(
          leading: const Icon(Icons.rate_review),
          title: const Text(
            "Grading",
            style: TextStyle(
                fontFamily: "montserrat"
            ),
          ),
          onTap: (){
            // Todo() handle navigation.
            Navigator.pop(context);

          },
        ),ListTile(
          leading: const Icon(Icons.person),
          title: const Text(
            "Staff & Management",
            style: TextStyle(
                fontFamily: "montserrat"
            ),
          ),
          onTap: (){
            // Todo() handle navigation.
            Navigator.pop(context);

          },
        ),

      ],
    ),
  );
}
