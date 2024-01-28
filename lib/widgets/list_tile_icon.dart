import 'package:flutter/material.dart';

import '../util/drawer_selection.dart';

class ListTileIcon extends StatelessWidget {
  const ListTileIcon({
    super.key,
    required this.icon,
    required this.drawerSelection,
    required this.currentSelection,
  });

  final IconData icon;
  final DrawerSelection drawerSelection;
  final DrawerSelection currentSelection;

  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: IconThemeData(
        color: drawerSelection == currentSelection
            ? Colors.deepPurple.shade700 // Selected color
            : Theme.of(context).textTheme.displaySmall?.color, // Default icon color
      ),
      child: Icon(icon),
    );
  }
}
