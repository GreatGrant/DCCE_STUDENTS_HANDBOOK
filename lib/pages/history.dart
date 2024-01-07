import 'package:dcce_handbook/widgets/dropcap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dcce_handbook/util/strings.dart';

import '../widgets/common_app_bar.dart';
import '../widgets/build_drawer.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: title),
      drawer: buildDrawer(context),
      body: const CommonDropCap(paragraph: AppStrings.historyString)
    );
  }
}

