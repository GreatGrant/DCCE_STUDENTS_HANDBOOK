import 'package:flutter/material.dart';

import '../util/DrawerSelection.dart';

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
        color: drawerSelection == DrawerSelection.home
            ? Colors.deepPurple.shade700 // Selected color
            : Theme.of(context).iconTheme.color, // Default icon color
      ),
      child: Icon(icon),
    );
  }
}
