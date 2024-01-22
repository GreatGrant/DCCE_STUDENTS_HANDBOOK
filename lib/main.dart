import 'package:dcce_handbook/onboarding/onboarding_view.dart';
import 'package:dcce_handbook/pages/home_page.dart';
import 'package:dcce_handbook/util/theme_provider.dart';
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
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'DCCE Student Handbook',
            theme: ThemeData.light(
              useMaterial3: true,
            ).copyWith(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              canvasColor: Colors.white
            ),
            darkTheme: ThemeData.dark(
              useMaterial3: true,
            ).copyWith(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              canvasColor: Colors.grey[900]
            ),
            themeMode: themeProvider.themeMode, // Get theme mode from provider
            home: const OnboardingView()
          );
        },
      ),
    );
  }
}
