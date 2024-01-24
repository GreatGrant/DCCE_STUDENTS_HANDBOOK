
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void showBackDialog(BuildContext context) {
  showDialog<void>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text(
          'Are you sure you want to leave this page?',
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Nevermind'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Leave'),
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
