import 'package:flutter/material.dart';
import 'package:dcce_handbook/widgets/common_app_bar.dart';
import 'final_year_first_semester_screen.dart';
import 'final_year_second_semester_screen.dart';

class FinalYearScreen extends StatefulWidget {
  const FinalYearScreen({super.key, required this.title});

  final String title;

  @override
  FinalYearScreenState createState() => FinalYearScreenState();
}

class FinalYearScreenState extends State<FinalYearScreen>
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
          FinalYearFirstSemester(title: widget.title),
          FinalYearSecondSemester(title: widget.title),
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
