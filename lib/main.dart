import 'package:dcce_handbook/pages/grid_item.dart';
import 'package:dcce_handbook/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'models/level.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DCCE Student Handbook',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(title: "Home"),
    );
  }
}

class HomePage extends StatefulWidget{
  const HomePage({super.key, required this.title});
  final String title;

  // bottom: const TabBar(
  // tabs: [
  // Tab(icon: Icon(Icons.home), text: "Home"),
  // Tab(icon: Icon(Icons.history_edu), text: "History"),
  // Tab(icon: Icon(Icons.sticky_note_2), text: "Philosophy"),
  // Tab(icon: Icon(Icons.menu_book), text: "Exam Guidelines"),
  // Tab(icon: Icon(Icons.safety_check), text: "Academic Regulation"),
  // Tab(icon: Icon(Icons.admin_panel_settings), text: "Admission Requirements"),
  // Tab(icon: Icon(Icons.access_time), text: "Course Duration"),
  // Tab(icon: Icon(Icons.event_note), text: "Curriculum"),
  // Tab(icon: Icon(Icons.rate_review), text: "Grading"),
  // Tab(icon: Icon(Icons.person), text: "Staff & Management"),
  // ]


  @override
  HomePageState createState()=>  HomePageState();

}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const HomePagee(),
      drawer: buildDrawer(),
    );
  }

  Drawer buildDrawer() {
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
            },
          ),

        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            fontFamily: "montserrat",
            fontWeight: FontWeight.bold,
        ),
      ),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: (){
                // Todo() handle click
        },
              icon: const Icon(Icons.bedtime)
          ),
          PopupMenuButton(
            onSelected: (value){
              // Todo() handle click
            },
              itemBuilder: (BuildContext context){
                return [
                  const PopupMenuItem(
                      child: Text("About")
                  )
                ];
              }),
        ],
      );
  }
}

