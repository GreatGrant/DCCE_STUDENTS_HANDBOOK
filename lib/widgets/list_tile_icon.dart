import 'package:flutter/material.dart';
import '../util/drawer_selection.dart';

/// A widget for displaying an icon in a list tile, with dynamic color based on selection.
///
/// The [ListTileIcon] class is used to display an [Icon] within a list tile,
/// with the color of the icon changing based on whether the corresponding drawer
/// item is currently selected or not.
class ListTileIcon extends StatelessWidget {
  /// Creates a [ListTileIcon] widget.
  ///
  /// The [icon] parameter specifies the icon to be displayed.
  /// The [drawerSelection] parameter indicates the selection status of the drawer item.
  /// The [currentSelection] parameter indicates the current selected drawer item.
  const ListTileIcon({
    super.key,
    required this.icon,
    required this.drawerSelection,
    required this.currentSelection,
  });

  /// The icon to be displayed in the list tile.
  final IconData icon;

  /// The selection status of the drawer item associated with the icon.
  final DrawerSelection drawerSelection;

  /// The currently selected drawer item.
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
