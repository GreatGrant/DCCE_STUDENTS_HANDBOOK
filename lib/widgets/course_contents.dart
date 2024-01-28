import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

/// A widget representing a course content with optional title.
///
/// The [CourseContent] widget is used to display course content with an optional title.
/// It consists of a column containing a title (if provided) and the content text.
class CourseContent extends StatelessWidget {
  /// The title of the course content. If not provided, an empty string is used.
  final String title;

  /// The main content of the course.
  final String content;

  /// Constructs a [CourseContent] with the specified [title] and [content].
  ///
  /// The [title] parameter is optional and represents the title of the course content.
  /// The [content] parameter is required and represents the main content of the course.

  const CourseContent({this.title = "", required this.content, super.key} );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: title.isNotEmpty,
            child: Text(
              title,
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
              content,
            style:  GoogleFonts.montserrat(),
          ),
        ],
      ),
    );
  }
}