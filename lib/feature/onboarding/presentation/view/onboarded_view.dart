import 'package:flutter/material.dart';
import 'package:pharmacy_app/feature/onboarding/presentation/view/widget/onboarded_view_body.dart';

class OnboardedView extends StatelessWidget {
  const OnboardedView({super.key});

  static const routeName = '/onboarded';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: OnboardedViewBody(),
        ),
      ),
    );
  }
}
