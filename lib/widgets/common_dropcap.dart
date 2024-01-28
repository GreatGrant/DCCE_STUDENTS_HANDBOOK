import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

/// A common widget for displaying text with a drop cap.
///
/// The [CommonDropCap] widget is used to display text with a drop cap,
/// which is a large initial letter at the beginning of a paragraph.
/// This widget provides a consistent style for drop cap text across the app.
class CommonDropCap extends StatelessWidget {
  /// Constructs a [CommonDropCap] with the specified [paragraph].
  ///
  /// The [paragraph] parameter is required and specifies the text content
  /// of the paragraph to be displayed with a drop cap.
  const CommonDropCap({
    super.key,
    required this.paragraph,
  });

  final String paragraph;

  @override
  Widget build(BuildContext context) {
    return DropCapText(
      paragraph,
      dropCapStyle: GoogleFonts.merriweather(
        color: const Color.fromARGB(255, 38, 48, 145),
      ),
      style: GoogleFonts.montserrat(
        fontSize: 16,
        wordSpacing: 4,
      )
    );
  }
}
