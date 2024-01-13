import 'package:dcce_handbook/pages/card_destinations/third_year_first_semester_screen.dart';
import 'package:dcce_handbook/pages/card_destinations/third_year_second_semester_screen.dart';
import 'package:flutter/material.dart';
import 'package:dcce_handbook/widgets/common_app_bar.dart';

class ThirdYearScreen extends StatefulWidget {
  const ThirdYearScreen({super.key, required this.title});

  final String title;

  @override
  ThirdYearScreenState createState() => ThirdYearScreenState();
}

class ThirdYearScreenState extends State<ThirdYearScreen>
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
          ThirdYearFirstSemester(title: widget.title),
          ThirdYearSecondSemester(title: widget.title),
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
