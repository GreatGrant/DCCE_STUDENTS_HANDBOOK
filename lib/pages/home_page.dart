import 'package:dcce_handbook/util/DrawerSelection.dart';
import 'package:dcce_handbook/widgets/grid_item.dart';
import 'package:flutter/material.dart';
import '../models/level.dart';
import '../widgets/common_app_bar.dart';
import '../widgets/app_drawer.dart';
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
    return Scaffold(
        appBar: CommonAppBar(title: widget.title),
        drawer: const AppDrawer(initialSelection: DrawerSelection.home),
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
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontFamily: "montserrat"
                  ),
              ),
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
    );
  }

}

void _navigateToDestination(BuildContext context, int index){
  switch(index){
    case 0:
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const FirstYearScreen(title: 'First Year',)));
      break;
    case 1:
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SecondYearScreen(title: 'Second Year',)));
      break;
    case 2:
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ThirdYearScreen(title: 'Third Year',)));
      break;
    case 3:
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const FourthYearScreen(title: 'Fourth Year',)));
      break;
    case 4:
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const FinalYearScreen(title: 'Final Year',)));
      break;
    default:
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const CurriculumScreen(title: 'Syllabus',)));
  }
}
