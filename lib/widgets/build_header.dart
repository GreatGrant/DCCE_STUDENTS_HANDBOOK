import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
