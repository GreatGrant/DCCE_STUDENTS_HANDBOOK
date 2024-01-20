import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../util/theme_provider.dart';

class CommonAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
    required this.title,
    this.tabs,
    this.tabController,
  });

  final String title;
  final List<Widget>? tabs;
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
        style: TextStyle(
          color: Theme.of(context).textTheme.displaySmall?.color,
          fontFamily: "montserrat",
          fontWeight: FontWeight.bold,
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
            // Todo() handle click
          },
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text(
                  "About",
                  style: TextStyle(
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
        preferredSize: const Size.fromHeight(48.0), // Adjust the height as needed
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: TabBar(
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
      super.dispose();
    }
  }

  void _toggleTheme(BuildContext context, bool isDarkMode) {
    ThemeMode themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;

    Provider.of<ThemeProvider>(context, listen: false).setThemeMode(themeMode);
  }
}
