import 'package:dcce_handbook/pages/card_destinations/second_year_first_semester_screen.dart';
import 'package:dcce_handbook/pages/card_destinations/second_year_second_semester_screen.dart';
import 'package:flutter/material.dart';
import 'package:dcce_handbook/widgets/common_app_bar.dart';

class SecondYearScreen extends StatefulWidget {
  const SecondYearScreen({super.key, required this.title});

  final String title;

  @override
  SecondYearScreenState createState() => SecondYearScreenState();
}

class SecondYearScreenState extends State<SecondYearScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _getTabs().length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
          title: widget.title,
          tabs: _getTabs(),
          tabController: _tabController
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          SecondYearFirstSemester(title: widget.title),
          SecondYearSecondSemester(title: widget.title),
        ],
      ),
    );
  }

  List<Widget> _getTabs() {
    return [
      const Tab(text: "First Semester"),
      const Tab(text: "Second Semester"),
    ];
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
