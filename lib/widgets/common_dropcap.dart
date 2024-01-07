import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/cupertino.dart';

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
      dropCapStyle: const TextStyle(
        fontFamily: "montserrat",
        color: Color.fromARGB(255, 38, 48, 145),
      ),
      style: const TextStyle(
          fontFamily: "montserrat",
          fontSize: 16,
        wordSpacing: 4,
      ),
    );
  }
}
