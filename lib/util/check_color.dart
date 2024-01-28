import 'package:flutter/material.dart';

bool isColorDark(Color color) {
  // Calculate the luminance of the color
  final luminance = color.computeLuminance();

  // Check if the luminance is below a certain threshold
  return luminance < 0.5;
}

Color getBackgroundColor(BuildContext context) {
  return Theme.of(context).canvasColor;
}

