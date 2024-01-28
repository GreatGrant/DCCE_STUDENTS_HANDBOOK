import 'package:flutter/material.dart';
import 'common_dropcap.dart';


/// A common layout widget for displaying text with a drop cap.
///
/// The [CommonDropCapLayout] widget is used to create a common layout
/// for displaying text with a drop cap. It wraps the [CommonDropCap]
/// widget and provides consistent styling and layout for drop cap text.
class CommonDropCapLayout extends StatelessWidget {
  /// Constructs a [CommonDropCapLayout] with the specified [paragraph].
  ///
  /// The [paragraph] parameter is required and specifies the text content
  /// of the paragraph to be displayed with a drop cap.
  const CommonDropCapLayout({super.key, required this.paragraph});

  final String paragraph;

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonDropCap(paragraph: paragraph)
        ],
      ),
    );
  }
}

