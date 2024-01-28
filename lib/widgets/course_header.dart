import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// A widget representing a header for a course section.
///
/// The [CourseHeader] widget is used to display a header for a course section.
/// It consists of a container with a title text displayed in the center.
class CourseHeader extends StatelessWidget {
  /// The title of the course section.
  final String title;

  /// Constructs a [CourseHeader] with the specified [title].
  ///
  /// The [title] parameter is required and represents the title of the course section.
  const CourseHeader(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration:  BoxDecoration(
          color: const Color.fromARGB(255, 38, 48, 145),
          borderRadius: BorderRadius.circular(8)
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style:  GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            backgroundColor: const Color.fromARGB(255, 38, 48, 145),
          ),
        ),
      ),
    );
  }
}
