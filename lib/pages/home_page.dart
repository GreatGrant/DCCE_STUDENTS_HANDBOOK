import 'package:flutter/material.dart';

import '../models/level.dart';
import 'grid_item.dart';

class HomePagee extends StatelessWidget {
  const HomePagee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Academic Levels",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontFamily: "montserrat"
                )
            ),
            const SizedBox(height: 8,),
            Text("Select A Level Below To See Its Syllabus",
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 8,),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4
                  ),
                  itemCount: Level.levels.length,
                  itemBuilder: (BuildContext context, int index){
                    final currentLevel = Level.levels[index];
                    return buildGridItem(currentLevel);
                  }),
            )

          ],
        ),
      ),
    );
  }
}
