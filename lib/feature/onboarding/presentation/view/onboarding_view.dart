import 'package:flutter/material.dart';
import 'package:pharmacy_app/feature/onboarding/presentation/view/widget/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  static const routeName = '/onboarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingViewBody(),
    );
  }
}
