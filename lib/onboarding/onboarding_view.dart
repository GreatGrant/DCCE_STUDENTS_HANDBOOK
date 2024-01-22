import 'package:dcce_handbook/onboarding/onboarding_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final pageController = PageController();
  final onboardingItems = OnboardingItem.items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        color: Theme.of(context).canvasColor,
        child: Row(
          children: [
            //Skip button
            TextButton(onPressed: (){}, child: const Text("Skip")),

            //indicator
            SmoothPageIndicator(
              controller: pageController,
              count: onboardingItems.length,
              effect: const WormEffect(
                activeDotColor: Color.fromARGB(255, 38, 48, 145),
              ),

            ),
            // Next button
            TextButton(onPressed: (){}, child: const Text("Next"))
          ],
        ),
      ),
      body: PageView.builder(
        controller: pageController,
        itemCount: onboardingItems.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(onboardingItems[index].image),
                Text(onboardingItems[index].title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: "montserrat",
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text(onboardingItems[index].description,
                  style: const TextStyle(
                    fontSize: 17,
                    fontFamily: "montserrat"
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
