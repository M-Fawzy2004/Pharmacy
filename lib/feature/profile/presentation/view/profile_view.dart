import 'package:flutter/material.dart';
import 'package:pharmacy_app/feature/profile/presentation/view/widget/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: const ProfileViewBody(),
        ),
      ),
    );
  }
}
