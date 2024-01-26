import 'package:dcce_handbook/util/DrawerSelection.dart';
import 'package:dcce_handbook/widgets/build_header.dart';
import 'package:dcce_handbook/widgets/common_dropcap_layout.dart';
import 'package:dcce_handbook/widgets/course_contents.dart';
import 'package:dcce_handbook/widgets/course_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../util/strings.dart';
import '../widgets/app_drawer.dart';
import '../widgets/common_app_bar.dart';

class StaffScreen extends StatelessWidget {
  const StaffScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: title),
      drawer: const AppDrawer(initialSelection: DrawerSelection.staff),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "OVERALL MANAGEMENT OF THE DEPARTMENT",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: "montserrat"),
              ),
              CommonDropCapLayout(paragraph: AppStrings.staffCourseContent)
            ],
          ),
        ),
      ),
    );
  }
}