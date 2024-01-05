import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CommonAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: "montserrat",
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: false,
      actions: [
        IconButton(
            onPressed: (){
              // Todo() handle click
            },
            icon: const Icon(Icons.bedtime)
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

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
