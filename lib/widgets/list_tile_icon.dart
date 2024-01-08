import 'package:flutter/material.dart';

class ListTileIcon extends StatelessWidget {
  const ListTileIcon({
    super.key,
    required this.icon
  });

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: IconThemeData(
        color: Theme.of(context).iconTheme.color,
      ), child: Icon(icon),
    );
  }
}
