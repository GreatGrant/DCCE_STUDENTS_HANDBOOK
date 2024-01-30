import 'package:dcce_handbook/onboarding/onboarding_view.dart';
import 'package:dcce_handbook/pages/home_page.dart';
import 'package:dcce_handbook/util/constants.dart';
import 'package:dcce_handbook/util/theme_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// The entry point of the application.
///
/// The `main` function initializes the application by setting up the necessary
/// configurations and then runs the app.
void main() async {

//adds a license to the LicenseRegistry for the Google Fonts Open Font License (OFL).
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  // Ensures that Flutter bindings are initialized.
  WidgetsFlutterBinding.ensureInitialized();

  // Retrieves an instance of SharedPreferences to check if the user has completed onboarding.
  final sharedPref = await SharedPreferences.getInstance();
  final isOnboarded = sharedPref.getBool(sharedPrefKey) ?? false;

  // Runs the application, providing the ThemeProvider with the onboarding status.
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(isOnboarded: isOnboarded),
    ),
  );
}

/// The main application widget.
///
/// The [MyApp] widget initializes the MaterialApp and configures the theme mode
/// based on the user's onboarding status. It displays the HomePage if the user
/// has completed onboarding, otherwise, it displays the OnboardingView.
class MyApp extends StatelessWidget {
  final bool isOnboarded;

  /// Constructs a [MyApp] with the specified [isOnboarded] status.
  ///
  /// The [isOnboarded] parameter determines whether the user has completed onboarding.
  const MyApp({super.key, required this.isOnboarded});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DCCE Student Handbook',
        // Configures light and dark themes with custom colors.
        theme: ThemeData.light(
          useMaterial3: true,
        ).copyWith(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            canvasColor: Colors.white),
        darkTheme: ThemeData.dark(
          useMaterial3: true,
        ).copyWith(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            canvasColor: Colors.grey[900]),
        // Sets the theme mode based on the user's preference.
        themeMode: Provider.of<ThemeProvider>(context).themeMode,
        // Displays the HomePage if the user is onboarded, otherwise, displays OnboardingView.
        home: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
      IconData iconData = themeProvider.themeMode == ThemeMode.dark
          ? Icons.sunny // Display sun icon for dark mode
          : Icons.bedtime; // Display moon icon for light mode
      return isOnboarded
            ? const HomePage(title: "Home")
            : const OnboardingView();
        }
        )
    );
  }
}
