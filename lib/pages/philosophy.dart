import 'package:dcce_handbook/util/DrawerSelection.dart';
import 'package:dcce_handbook/util/strings.dart';
import 'package:dcce_handbook/widgets/common_dropcap_layout.dart';
import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import '../widgets/common_app_bar.dart';

class PhilosophyScreen extends StatelessWidget {
  const PhilosophyScreen({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: title),
      drawer: const AppDrawer(initialSelection: DrawerSelection.philosophy),
      body: const CommonDropCapLayout(paragraph: AppStrings.philosophyString)
    );
  }
}
