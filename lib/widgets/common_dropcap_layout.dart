import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';

import 'common_dropcap.dart';

class CommonDropCapLayout extends StatelessWidget {
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

