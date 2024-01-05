import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../util/strings.dart';
import '../widgets/build_drawer.dart';
import '../widgets/common_app_bar.dart';
import '../widgets/dropcap.dart';

class AcademicRegulationsScreen extends StatelessWidget {
  const AcademicRegulationsScreen({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: title),
      drawer: buildDrawer(context),
      body: const CommonDropCap(paragraph: AppStrings.academic_regulation)
    );
  }
}
