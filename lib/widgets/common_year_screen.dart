import 'package:flutter/material.dart';
import 'common_app_bar.dart';

/// A common screen widget for displaying content organized by academic year with tabs.
///
/// The [CommonYearScreen] widget is used to create a common screen layout
/// for displaying content organized by year with tabs. It consists of a scaffold
/// with an app bar containing the title and tabs, and a tab bar view displaying
/// the content associated with each tab.
class CommonYearScreen extends StatelessWidget {
  /// Constructs a [CommonYearScreen] with the specified parameters.
  ///
  /// The [title] parameter is required and represents the title of the screen.
  /// The [tabs] parameter is required and represents the tabs to be displayed
  /// in the app bar. The [tabViewChildren] parameter is required and represents
  /// the content associated with each tab.

  const CommonYearScreen({
    super.key,
    required this.title,
    required this.tabs,
    required this.tabViewChildren,
  });

  /// The title of the screen.
  final String title;

  /// The tabs to be displayed in the app bar.
  final List<Widget> tabs;

  /// The content associated with each tab.
  final List<Widget> tabViewChildren;

  @override
  Widget build(BuildContext context) {
    TabController tabController = DefaultTabController.of(context);

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: CommonAppBar(
          title: title,
          tabs: tabs,
        ),
        body: TabBarView(
          controller: tabController,
          children: tabViewChildren,
        ),
      ),
    );
  }
}
