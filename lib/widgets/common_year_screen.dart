import 'package:flutter/material.dart';
import 'package:dcce_handbook/widgets/common_app_bar.dart';

class CommonYearScreen extends StatelessWidget {
  const CommonYearScreen({
    super.key,
    required this.title,
    required this.tabs,
    required this.tabViewChildren,
  });

  final String title;
  final List<Widget> tabs;
  final List<Widget> tabViewChildren;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: CommonAppBar(
          title: title,
          tabs: tabs,
        ),
        body: TabBarView(
          children: tabViewChildren,
        ),
      ),
    );
  }
}
