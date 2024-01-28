import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


void showBackDialog(BuildContext context) {
  showDialog<void>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text('Are you sure?', style:  GoogleFonts.montserrat()),
        content: Text(
          'Are you sure you want to leave this page?',
          style:  GoogleFonts.montserrat(),
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Nevermind', style: TextStyle(fontFamily: "montserrat"),),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: Text('Leave', style:  GoogleFonts.montserrat()),
            onPressed: () {
              Navigator.pop(context);

              // Exit app
              SystemNavigator.pop();
            },
          ),
        ],
      );
    },
  );
}
