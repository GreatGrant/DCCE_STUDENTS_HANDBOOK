import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/level.dart';

Widget buildGridItem(Level level) {
  return SizedBox(
    width: 100,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(level.level),
            const SizedBox(height: 8),
            SvgPicture.asset(
              level.icon,
              width: 60,
              height: 60,
            ),
            ],
          ),
        ),
      ),
    );
  }