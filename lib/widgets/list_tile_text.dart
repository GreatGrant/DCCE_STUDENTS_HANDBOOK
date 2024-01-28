import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../util/drawer_selection.dart';

/// A widget for displaying text in a list tile, with dynamic style based on selection.
///
/// The [ListTileText] class is used to display text within a list tile,
/// with the style of the text changing based on whether the corresponding drawer
/// item is currently selected or not.
class ListTileText extends StatelessWidget {
  /// Creates a [ListTileText] widget.
  ///
  /// The [text] parameter specifies the text to be displayed.
  /// The [drawerSelection] parameter indicates the selection status of the drawer item.
  /// The [currentSelection] parameter indicates the current selected drawer item.
  const ListTileText({
    super.key,
    required this.text,
    required this.drawerSelection,
    required this.currentSelection,
  });

  /// The text to be displayed in the list tile.
  final String text;

  /// The selection status of the drawer item associated with the text.
  final DrawerSelection drawerSelection;

  /// The currently selected drawer item.
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
