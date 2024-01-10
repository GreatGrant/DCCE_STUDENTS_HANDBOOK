import 'package:flutter/cupertino.dart';

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
      style: const TextStyle(
        fontFamily: "montserrat",
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
