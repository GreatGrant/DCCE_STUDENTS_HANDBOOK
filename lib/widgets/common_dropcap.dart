import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonDropCap extends StatelessWidget {
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
