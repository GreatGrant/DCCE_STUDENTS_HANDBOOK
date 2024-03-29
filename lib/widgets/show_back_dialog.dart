import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

/// Shows a confirmation dialog when attempting to navigate back.
///
/// The [showBackDialog] function displays a confirmation dialog when the user
/// attempts to navigate back from the current page. It prompts the user with
/// the question "Are you sure you want to leave this page?" and provides two
/// options: "Nevermind" to cancel the action and remain on the page, and "Leave"
/// to confirm the action and exit the application.
///
/// - [context]: The [BuildContext] for the widget tree.
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
