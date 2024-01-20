import 'package:flutter/material.dart';
import '../util/DrawerSelection.dart';
import '../util/strings.dart';
import '../widgets/app_drawer.dart';
import '../widgets/common_app_bar.dart';
import '../widgets/common_dropcap_layout.dart';

class AcademicRegulationsScreen extends StatelessWidget {
  const AcademicRegulationsScreen({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: title,),
      drawer: const AppDrawer(initialSelection: DrawerSelection.academic_regulation),
      body: const CommonDropCapLayout(paragraph: AppStrings.academicRegulation)
    );
  }
}
