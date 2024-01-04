import 'package:dcce_handbook/pages/grid_item.dart';
import 'package:flutter/material.dart';

import 'models/level.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DCCE Student Handbook',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: "Home"),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
        ),
      ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Categories",
            style: Theme.of(context).textTheme.headlineLarge,),
            const SizedBox(height: 8,),
            Text("Select A Level Applicable To You From Below",
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

