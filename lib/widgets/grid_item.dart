import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
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
            Text(
              level.level,
              style:  GoogleFonts.montserrat(
                  color: const Color.fromARGB(255, 38, 48, 145),
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 8),
            SvgPicture.asset(
              level.svgImage,
              width: 100,
              height: 100,
            ),
            ],
          ),
        ),
      ),
    );
  }