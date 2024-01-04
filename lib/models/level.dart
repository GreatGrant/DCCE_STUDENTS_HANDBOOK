import 'package:flutter/material.dart';

class Level{
  final String icon;
  final String level;

  const Level({required this.icon, required this.level});

  static const levels = [
    Level(icon: "assets/images/undraw_drone_delivery.xml", level: "Fresh Year"),
    Level(icon: "assets/images/undraw_drone_delivery.xml", level: "Second Year"),
    Level(icon: "assets/images/undraw_programmer.xml" , level: "Third Year"),
    Level(icon: "assets/images/undraw_pair_programming.xml", level: "Penultimate Year"),
    Level(icon: "assets/images/undraw_online_test.xml", level: "Final Year"),
    Level(icon: "assets/images/undraw_omega.xml", level: "Syllabus"),
  ];
  
}