import 'package:flutter/material.dart';
import 'package:pharmacy_app/feature/auth/presentation/view/sign_in_view.dart';
import 'package:pharmacy_app/feature/auth/presentation/view/sign_up_view.dart';
import 'package:pharmacy_app/feature/onboarding/presentation/view/onboarded_view.dart';
import 'package:pharmacy_app/feature/onboarding/presentation/view/onboarding_view.dart';
import 'package:pharmacy_app/feature/splash/presentation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    // splash view
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView());

    // onboarding view
    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnboardingView());

    // onboarded view
    case OnboardedView.routeName:
      return MaterialPageRoute(builder: (context) => OnboardedView());

    // sign in view
    case SignInView.routeName:
      return MaterialPageRoute(builder: (context) => SignInView());  

    // sign up view
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => SignUpView());  

    // default
    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
