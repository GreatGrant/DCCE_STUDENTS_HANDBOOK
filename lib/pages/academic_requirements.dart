import 'package:dcce_handbook/util/strings.dart';
import 'package:dcce_handbook/widgets/common_dropcap_layout.dart';
import 'package:flutter/material.dart';
import '../util/drawer_selection.dart';
import '../widgets/app_drawer.dart';
import '../widgets/common_app_bar.dart';
import '../widgets/show_back_dialog.dart';

class AdmissionRequirementsScreen extends StatelessWidget {
  const AdmissionRequirementsScreen({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) {
        if (didPop) {
          return;
        }
        showBackDialog(context);
      },
      child: Scaffold(
        appBar: CommonAppBar(title: title),
          drawer: const AppDrawer(initialSelection: DrawerSelection.admissionReq),
          body: const CommonDropCapLayout(
          paragraph: AppStrings.admissionRequirement,
        )
      ),
    );
  }
}
