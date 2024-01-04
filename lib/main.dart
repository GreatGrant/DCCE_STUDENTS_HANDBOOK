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


  @override
  HomePageState createState()=>  HomePageState();

}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const HomePagee(),
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
              icon: const Icon(Icons.shield_moon)
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

