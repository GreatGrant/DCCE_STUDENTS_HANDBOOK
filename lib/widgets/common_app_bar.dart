import 'package:dcce_handbook/pages/about_app_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../util/theme_provider.dart';

/// A customizable app bar commonly used across the app.
///
/// This app bar provides a consistent look and feel for the app's screens.
class CommonAppBar extends StatefulWidget implements PreferredSizeWidget {
  /// Constructs a [CommonAppBar] with the specified [title], [tabs], and [tabController].
  ///
  /// The [title] parameter is required and specifies the title displayed in the app bar.
  ///
  /// The [tabs] parameter is optional and specifies the list of widgets representing tabs.
  ///
  /// The [tabController] parameter is optional and provides a [TabController] for controlling tab selection.
  const CommonAppBar({
    super.key,
    required this.title,
    this.tabs,
    this.tabController,
  });

  /// The title displayed in the app bar.
  final String title;

  /// The list of widgets representing tabs.
  final List<Widget>? tabs;

  /// The tab controller for controlling tab selection.
  final TabController? tabController;

  @override
  Size get preferredSize {
    if (tabs != null && tabs!.isNotEmpty) {
      return const Size.fromHeight(kToolbarHeight + 48.0);
    } else {
      return const Size.fromHeight(kToolbarHeight);
    }
  }

  @override
  State<StatefulWidget> createState() => CommonAppBarState();
}

class CommonAppBarState extends State<CommonAppBar>
    with SingleTickerProviderStateMixin {

  late TabController _tabController;
  bool isDarkMode = false;

  @override
  void initState() {
    super.initState();
    if (widget.tabs != null && widget.tabs!.isNotEmpty) {
      _tabController = widget.tabController ?? TabController(
        length: widget.tabs!.length,
        vsync: this,
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: Theme.of(context).iconTheme,
      backgroundColor: Theme.of(context).canvasColor,
      title: Text(
        widget.title,
        style: GoogleFonts.montserrat(
          color: Theme.of(context).textTheme.displaySmall?.color,
        ),
      ),
      centerTitle: false,
      actions: [
        IconButton(
          icon: Icon(isDarkMode ? Icons.sunny : Icons.bedtime),
          onPressed: () {
            setState(() {
              isDarkMode = !isDarkMode;
              _toggleTheme(context, isDarkMode);
            });
          },
        ),
        PopupMenuButton(
          color: Theme.of(context).canvasColor,

          onSelected: (value) {
            if (value == 'about') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutAppScreen()),
              );
            }
          },
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                value: "about",
                child: Text(
                  "About",
                  style: GoogleFonts.montserrat(
                    color: Theme.of(context).textTheme.displaySmall?.color,
                  ),
                ),
              )
            ];
          },
        ),
      ],
      bottom: widget.tabs != null && widget.tabs!.isNotEmpty
          ? PreferredSize(
        preferredSize: const Size.fromHeight(48.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: TabBar(
            labelColor: const Color.fromARGB(255, 38, 48, 145),
            indicatorColor: const Color.fromARGB(255, 38, 48, 145),
            unselectedLabelColor: Theme.of(context).textTheme.displaySmall?.color,
            tabs: widget.tabs!,
            controller: _tabController,
          ),
        ),
      )
          : null,
    );
  }

  @override
  void dispose() {
    if (widget.tabs != null && widget.tabs!.isNotEmpty) {
      _tabController.dispose();
    }
    super.dispose();

  }

  void _toggleTheme(BuildContext context, bool isDarkMode) {
    ThemeMode themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;

    Provider.of<ThemeProvider>(context, listen: false).setThemeMode(themeMode);
  }
}
