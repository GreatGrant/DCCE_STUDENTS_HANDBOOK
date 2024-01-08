import 'package:flutter/material.dart';

class ListTileText extends StatelessWidget {
  const ListTileText({
    super.key,
    required this.text
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: "montserrat",
          color: Theme.of(context).textTheme.displaySmall?.color
      ),
    );
  }
}
