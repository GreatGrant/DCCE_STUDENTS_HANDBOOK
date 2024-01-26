import 'package:flutter/material.dart';

class Level{
  final String svgImage;
  final String level;

  const Level({required this.svgImage, required this.level});

  static const levels = [
    Level(svgImage: "assets/svg/undraw_outer_space.svg", level: "Fresh Year"),
    Level(svgImage: "assets/svg/undraw_product_iteration.svg", level: "Second Year"),
    Level(svgImage: "assets/svg/undraw_sharing_knowledge.svg" , level: "Third Year"),
    Level(svgImage: "assets/svg/undraw_programmer.svg", level: "Fourth Year"),
    Level(svgImage: "assets/svg/undraw_agree.svg", level: "Final Year"),
    Level(svgImage: "assets/svg/undraw_book_lover.svg", level: "Curriculum"),
  ];
  
}