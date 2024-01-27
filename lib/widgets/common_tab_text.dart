import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonTabText extends StatelessWidget {
  const CommonTabText({
    super.key,
    required this.text
  });

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
