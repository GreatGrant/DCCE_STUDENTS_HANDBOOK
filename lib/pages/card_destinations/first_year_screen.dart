import 'package:flutter/material.dart';
import 'package:dcce_handbook/pages/card_destinations/first_year_first_semester_screen.dart';
import 'package:dcce_handbook/pages/card_destinations/first_year_second_semester_screen.dart';
import 'package:dcce_handbook/widgets/common_app_bar.dart';

class FirstYearScreen extends StatefulWidget {
  const FirstYearScreen({super.key, required this.title});

  final String title;

  @override
  FirstYearScreenState createState() => FirstYearScreenState();
}

class FirstYearScreenState extends State<FirstYearScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2, // Number of tabs
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: widget.title, tabs: _getTabs(), tabController: _tabController),
      body: TabBarView(
        controller: _tabController,
        children: [
          FirstYearFirstSemester(title: widget.title),
          FirstYearSecondSemester(title: widget.title),
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
