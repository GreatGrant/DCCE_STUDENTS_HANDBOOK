import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewUtils {
  static Future<void> loadHtmlContent({
    required WebViewController controller,
    required String htmlContent,
    required Color backgroundColor,
    required bool isColorDark,
  }) async {
    // Load HTML content into the WebView
    await controller.loadHtmlString(htmlContent);

    // Set background color after the web page has finished loading
    controller.clearCache(); // Clear cache to ensure styles are applied
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

  static bool isColorDark(Color color) {
    // Calculate the luminance of the color
    final luminance = color.computeLuminance();

    // Check if the luminance is below a certain threshold
    return luminance < 0.5;
  }
}
