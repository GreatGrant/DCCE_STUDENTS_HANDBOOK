import 'package:dcce_handbook/pages/home_page.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(HomePage widget) {
  return AppBar(
    title: Text(
      widget.title,
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