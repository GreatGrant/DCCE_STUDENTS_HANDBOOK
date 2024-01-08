import 'package:flutter/material.dart';

Widget buildParagraph(BuildContext context, String text, {bool isPenalty = false}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontFamily: "montserrat",
              color: isPenalty ? Colors.red : Theme.of(context).textTheme.displaySmall?.color,
            ),
          ),
        ),
      ],
    ),
  );
}
