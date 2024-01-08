import 'package:dcce_handbook/pages/home_page.dart';
import 'package:dcce_handbook/util/theme_provider.dart';
import 'package:dcce_handbook/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MaterialApp(
        title: 'DCCE Student Handbook',
        theme: ThemeData.light(
          useMaterial3: true,
        ).copyWith(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        darkTheme: ThemeData.dark(
          useMaterial3: true,
        ).copyWith(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const HomePage(title: "Home"),
      ),
    );
  }
}

