import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// A utility class for working with web views.
class WebViewUtils {
  /// Loads HTML content into a web view with specified background color and text color.
  ///
  /// The [controller] parameter is the web view controller.
  ///
  /// The [htmlContent] parameter is the HTML content to load into the web view.
  ///
  /// The [backgroundColor] parameter is the background color of the web view.
  ///
  /// The [isColorDark] parameter specifies whether the background color is dark or light.
  ///
  /// This method sets the background color of the web view, modifies text color and table header color based on the darkness of the background color.
  static Future<void> loadHtmlContent({
    required WebViewController controller,
    required String htmlContent,
    required Color backgroundColor,
    required bool isColorDark,
  }) async {
    // Load HTML content into the WebView
    await controller.loadHtmlString(htmlContent);

    // Clear cache to ensure styles are applied
    controller.clearCache();
    // Set background color after the web page has finished loading
    controller.setBackgroundColor(backgroundColor);
    controller.setJavaScriptMode(JavaScriptMode.unrestricted);

    // Modify styles based on background color darkness
    final headerColor = isColorDark ? "#ffffff" : "#000000";
    await controller.runJavaScript('''
      document.body.style.color = "$headerColor";
      var tableHeaders = document.querySelectorAll('th');
      for (var i = 0; i < tableHeaders.length; i++) {
        tableHeaders[i].style.color = "$headerColor";
      }  
    ''');
  }

  /// Determines whether a given color is dark or light.
  ///
  /// The [color] parameter is the color to be evaluated.
  ///
  /// Returns true if the color is considered dark, and false otherwise.
  static bool isColorDark(Color color) {
    // Calculate the luminance of the color
    final luminance = color.computeLuminance();

    // Check if the luminance is below a certain threshold
    return luminance < 0.5;
  }
}
