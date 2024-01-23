import 'package:dcce_handbook/onboarding/onboarding_item.dart';
import 'package:dcce_handbook/pages/home_page.dart';
import 'package:dcce_handbook/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onboarding_info.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView>{
  late PageController pageController;
  late List<OnboardingInfo> onboardingItems;
  bool isLastPage = false;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    onboardingItems = OnboardingItem.items;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        color: Theme.of(context).canvasColor,
        child: isLastPage ? getStarted(context) : Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Skip button
            TextButton(onPressed: ()=> pageController.jumpToPage(onboardingItems.length - 1),
                child: const Text("Skip")),
            //indicator
            SmoothPageIndicator(
              controller: pageController,
              count: onboardingItems.length,
              onDotClicked: (index)=> pageController.animateToPage(index,
                  duration: const Duration(microseconds: 600),
                  curve: Curves.easeIn),
              effect: const WormEffect(
                activeDotColor: Color.fromARGB(255, 38, 48, 145),
                dotWidth: 12,
                dotHeight: 12
              ),

            ),
            // Next button
            TextButton(
                onPressed: ()=> pageController.nextPage(duration: const Duration(milliseconds: 600),
                        curve: Curves.easeIn),
                child: const Text("Next"))
          ],
        ),
      ),
      body: PageView.builder(
        controller: pageController,
        itemCount: onboardingItems.length,
        onPageChanged: (index)=> setState(()=> isLastPage = onboardingItems.length-1 == index),
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                    onboardingItems[index].image,
                ),
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


  Widget getStarted(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      width: MediaQuery.of(context).size.width * .9,
      height: 55,
      child: TextButton(
          onPressed: () async{
            final sharedPref = await SharedPreferences.getInstance();
            sharedPref.setBool(sharedPrefKey, true);

            if(!mounted)return;
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => const HomePage(title: "DCCE Handbook"))
            );
          },
          child: const Text("Get Started", style: TextStyle(color: Colors.white),)
      ),
    );
  }
}
