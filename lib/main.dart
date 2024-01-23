import 'package:dcce_handbook/onboarding/onboarding_view.dart';
import 'package:dcce_handbook/pages/home_page.dart';
import 'package:dcce_handbook/util/constants.dart';
import 'package:dcce_handbook/util/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  final sharedPref = await SharedPreferences.getInstance();
  final isOnboarded = sharedPref.getBool(sharedPrefKey)??false;
  runApp(MyApp(isOnboarded: isOnboarded));
}

class MyApp extends StatelessWidget {
  final bool isOnboarded;
  const MyApp({super.key, required this.isOnboarded});

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
            home: isOnboarded ? const HomePage(title: "DCCE Handbook") : const OnboardingView()
          );
        },
      ),
    );
  }
}
