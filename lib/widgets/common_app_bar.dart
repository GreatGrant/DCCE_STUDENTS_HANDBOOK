import 'package:flutter/material.dart';

class CommonAppBar extends StatefulWidget implements PreferredSizeWidget{
  const CommonAppBar({super.key, required this.title});

  final String title;


  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<StatefulWidget> createState() => CommonAppBarState();

}

class CommonAppBarState extends State<CommonAppBar>{

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = false;
    return AppBar(
      iconTheme: Theme.of(context).iconTheme,
      backgroundColor: Theme.of(context).primaryColor,
      title: Text(
        widget.title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
          fontFamily: "montserrat",
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: false,
      actions: [
        IconButton(
          icon: const Icon(Icons.bedtime),
          onPressed: (){
            setState(() {
              isDarkMode = !isDarkMode;
            });
          },

        ),
        PopupMenuButton(
            onSelected: (value){
              // Todo() handle click
            },
            itemBuilder: (BuildContext context){
              return [
                const PopupMenuItem(
                    child: Text("About")
                )
              ];
            }),
      ],
    );
  }
}

