import 'package:dcce_handbook/util/strings.dart';
import 'package:dcce_handbook/widgets/common_dropcap_layout.dart';
import 'package:dcce_handbook/widgets/paragraph.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/build_drawer.dart';
import '../widgets/build_header.dart';
import '../widgets/common_app_bar.dart';
import '../widgets/common_dropcap.dart';

class CourseDurationScreen extends StatelessWidget {
  const CourseDurationScreen({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: title),
      drawer: buildDrawer(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CommonDropCap(paragraph: AppStrings.courseDuration),
            buildHeading(AppStrings.courseDurationHead),
            buildParagraph(AppStrings.courseDurationParagraph),
            buildHeading(AppStrings.courseDurationHead2),
            buildParagraph(AppStrings.courseDurationParagraph2),
          ],
        ),
      )
    );
  }
}
