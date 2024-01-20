import 'package:dcce_handbook/util/strings.dart';
import 'package:dcce_handbook/widgets/common_dropcap_layout.dart';
import 'package:flutter/material.dart';
import '../util/DrawerSelection.dart';
import '../util/DrawerSelection.dart';
import '../widgets/app_drawer.dart';
import '../widgets/common_app_bar.dart';
import '../util/DrawerSelection.dart';

class AdmissionRequirementsScreen extends StatelessWidget {
  const AdmissionRequirementsScreen({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: title),
        drawer: const AppDrawer(initialSelection: DrawerSelection.admission_req),
        body: const CommonDropCapLayout(
        paragraph: AppStrings.academicRequirementString,
      )
    );
  }
}
