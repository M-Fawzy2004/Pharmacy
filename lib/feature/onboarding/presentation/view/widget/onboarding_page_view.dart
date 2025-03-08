import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/utils/assets.dart';
import 'package:pharmacy_app/feature/onboarding/presentation/view/widget/onboarding_item.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  List categories = [
    {
      "title":
          "Your well-being is our top priority. We are dedicated to providing the best healthcare services for you",
      "personImage": Assets.imagesDoctor1,
    },
    {
      "title":
          "Day or night, we are always here for you. Our expert medical team is ready to support you 24/7 with care and compassion",
      "personImage": Assets.imagesDoctor2,
    },
    {
      "title":
          "We deliver excellence in every service we provide. With cutting-edge technology and professional expertise, your health is in safe hands",
      "personImage": Assets.imagesDoctor3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: widget.controller,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return OnboardingItem(
          title: categories[index]['title'],
          personImage: categories[index]['personImage'],
        );
      },
    );
  }
}
