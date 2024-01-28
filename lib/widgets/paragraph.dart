import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Builds a paragraph widget with customizable text style.
///
/// The [buildParagraph] function is used to create a paragraph widget
/// with the specified text and text style. By default, the text is styled
/// based on the current theme, but the color can be overridden if the text
/// represents a penalty or error.
///
/// - [context]: The [BuildContext] for the widget tree.
/// - [text]: The text content of the paragraph.
/// - [isPenalty]: Flag indicating whether the text represents a penalty or error.
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
