import 'package:dcce_handbook/util/drawer_selection.dart';
import 'package:dcce_handbook/widgets/grid_item.dart';
import 'package:flutter/material.dart';
import '../models/level.dart';
import '../widgets/common_app_bar.dart';
import '../widgets/app_drawer.dart';
import '../widgets/show_back_dialog.dart';
import 'card_destinations/curriculum_screen.dart';
import 'card_destinations/final_year_screen.dart';
import 'card_destinations/first_year_screen.dart';
import 'card_destinations/fourth_year_screen.dart';
import 'card_destinations/second_year_screen.dart';
import 'card_destinations/third_year_screen.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key, required this.title});
  final String title;

  @override
  HomePageState createState()=>  HomePageState();

}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) {
        if (didPop) {
          return;
        }
        showBackDialog(context);
      },
      child: Scaffold(
          appBar: CommonAppBar(title: widget.title),
          drawer: const AppDrawer(initialSelection: DrawerSelection.home),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 8,),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                    ),
                    itemCount: Level.levels.length,
                    itemBuilder: (BuildContext context, int index) {
                      final currentLevel = Level.levels[index];
                      return GestureDetector(
                        onTap: () {
                          _navigateToDestination(context, index);
                        },
                        child: buildGridItem(currentLevel),
                      );
                    },
                  ),
                )
              ],
            ),
          )
      ),
    );
  }

}

void _navigateToDestination(BuildContext context, int index) {
  switch (index) {
    case 0:
      _navigateWithAnimation(context, const FirstYearScreen(title: 'First Year'));
      break;
    case 1:
      _navigateWithAnimation(context, const SecondYearScreen(title: 'Second Year'));
      break;
    case 2:
      _navigateWithAnimation(context, const ThirdYearScreen(title: 'Third Year'));
      break;
    case 3:
      _navigateWithAnimation(context, const FourthYearScreen(title: 'Fourth Year'));
      break;
    case 4:
      _navigateWithAnimation(context, const FinalYearScreen(title: 'Final Year'));
      break;
    default:
      _navigateWithAnimation(context, const CurriculumScreen(title: 'Syllabus'));
  }
}

void _navigateWithAnimation(BuildContext context, Widget destination) {
  Navigator.push(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => destination,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    ),
  );
}
