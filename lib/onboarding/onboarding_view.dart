import 'package:dcce_handbook/onboarding/onboarding_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      body: PageView.builder(
        controller: pageController,
        itemCount: onboardingItems.length,
        itemBuilder: (context, index){
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(onboardingItems[index].image),
              const SizedBox(height: 20),
              Text(onboardingItems[index].title),
              const SizedBox(height: 20),
              Text(onboardingItems[index].description)
            ],
          );
        },
      ),
    );
  }
}
