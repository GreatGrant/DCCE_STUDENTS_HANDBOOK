import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/drawer_selection.dart';

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
      style:  GoogleFonts.montserrat(
          fontWeight: drawerSelection == currentSelection ? FontWeight.bold : FontWeight.normal,
          color: drawerSelection == currentSelection
              ? Colors.deepPurple.shade700 // Selected color
              :Theme.of(context).textTheme.displaySmall?.color, // Default text color
      ),
    );
  }
}
