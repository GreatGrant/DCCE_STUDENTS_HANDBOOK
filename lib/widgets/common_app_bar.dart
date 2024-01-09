import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../util/theme_provider.dart';

class CommonAppBar extends StatefulWidget implements PreferredSizeWidget{
  const CommonAppBar({super.key, required this.title});
  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<StatefulWidget> createState() => CommonAppBarState();

}

class CommonAppBarState extends State<CommonAppBar>{
  bool isDarkMode = false;

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
          onPressed: (){
            setState(() {
              isDarkMode = !isDarkMode;
              _toggleTheme(context, isDarkMode);
            });
          },

        ),
        PopupMenuButton(
            color: Theme.of(context).canvasColor,
            onSelected: (value){
              // Todo() handle click
            },
            itemBuilder: (BuildContext context){
              return [
                PopupMenuItem(
                    child: Text("About", style: TextStyle(color: Theme.of(context).textTheme.displaySmall?.color),)
                )
              ];
            }),
      ],
    );
  }
}

void _toggleTheme(BuildContext context, bool isDarkMode){
  ThemeMode themeMode =
      isDarkMode ? ThemeMode.dark : ThemeMode.light;

  Provider.of<ThemeProvider>(context, listen: false)
      .setThemeMode(themeMode);
}

