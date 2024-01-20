import 'package:dcce_handbook/util/DrawerSelection.dart';
import 'package:dcce_handbook/util/strings.dart';
import 'package:dcce_handbook/widgets/app_drawer.dart';
import 'package:dcce_handbook/widgets/paragraph.dart';
import 'package:flutter/material.dart';
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
      drawer: const AppDrawer(initialSelection: DrawerSelection.course_duration),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CommonDropCap(paragraph: AppStrings.courseDuration),
            buildHeading(AppStrings.courseDurationHead),
            buildParagraph(context, AppStrings.courseDurationParagraph),
            buildHeading(AppStrings.courseDurationHead2),
            buildParagraph(context, AppStrings.courseDurationParagraph2),
          ],
        ),
      )
    );
  }
}
