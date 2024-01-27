import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildParagraph(BuildContext context, String text, {bool isPenalty = false}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            text,
            style: GoogleFonts.montserrat(
              fontSize: 16,
              color: isPenalty ? Colors.red : Theme.of(context).textTheme.displaySmall?.color,
            ),
          ),
        ),
      ],
    ),
  );
}
