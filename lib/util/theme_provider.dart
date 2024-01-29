import 'package:flutter/material.dart';
/// A class that provides the theme mode for the app and notifies listeners when the theme mode changes.
class ThemeProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  /// Gets the current theme mode.
  ThemeMode get themeMode => _themeMode;

  /// Sets the theme mode and notifies listeners.
  ///
  /// The [themeMode] parameter specifies the new theme mode to be set.
  void setThemeMode(ThemeMode themeMode){

    _themeMode = themeMode;
    notifyListeners();
  }
}