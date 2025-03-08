import 'package:flutter/material.dart';
import 'package:pharmacy_app/feature/auth/presentation/view/widget/sign_in_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  static const routeName = '/sign-in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SignInViewBody(),
        ),
      ),
    );
  }
}
