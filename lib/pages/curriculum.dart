import 'package:flutter/material.dart';

import '../widgets/build_drawer.dart';
import '../widgets/common_app_bar.dart';

class CurriculumScreen extends StatelessWidget {
  const CurriculumScreen({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: title),
      drawer: buildDrawer(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title)
        ],
      ),
    );
  }
}
