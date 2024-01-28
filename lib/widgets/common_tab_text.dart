import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

/// A common widget for displaying text in tabs.
///
/// The [CommonTabText] widget is used to create a common style for text
/// displayed in tabs. It applies a bold Montserrat font style to the text
/// for consistent tab text styling across the app.
class CommonTabText extends StatelessWidget {
  /// Constructs a [CommonTabText] with the specified [text].
  ///
  /// The [text] parameter is required and represents the text content
  /// to be displayed in the tab.
  const CommonTabText({
    super.key,
    required this.text
  });

  /// The text content to be displayed in the tab.
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
