import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Builds a heading widget with the specified [text].
///
/// This function creates a heading widget with the given [text].
Widget buildHeading(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Text(
      text,
      style: GoogleFonts.montserrat(
        fontSize: 18, fontWeight: FontWeight.bold,
      )
    ),
  );
}
