import 'package:flutter/material.dart';

import '../util/DrawerSelection.dart';

class ListTileText extends StatelessWidget {
  const ListTileText({
    super.key,
    required this.text,
    required this.drawerSelection,
    required this.currentSelection,
  });

  final String text;
  final DrawerSelection drawerSelection;
  final DrawerSelection currentSelection;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: "montserrat",
          color: drawerSelection == currentSelection
              ? Colors.deepPurple.shade700 // Selected color
              :Theme.of(context).textTheme.displaySmall?.color, // Default text color
      ),
    );
  }
}
