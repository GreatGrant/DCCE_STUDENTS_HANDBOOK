import 'package:flutter/material.dart';

class Level{
  final IconData icon;
  final String level;

  const Level({required this.icon, required this.level});

  static const levels = [
    Level(icon: Icons.looks_one_rounded, level: "Fresh Year"),
    Level(icon: Icons.looks_two_rounded, level: "Second Year"),
    Level(icon: Icons.three_p_rounded , level: "Third Year"),
    Level(icon: Icons.traffic, level: "Penultimate Year"),
    Level(icon: Icons.traffic, level: "Final Year"),
    Level(icon: Icons.book, level: "Syllabus"),
  ];
  
}