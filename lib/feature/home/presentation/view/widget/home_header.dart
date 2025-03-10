import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/utils/assets.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.imagesCaretext),
        Spacer(),
        Image.asset(Assets.imagesMdiCart),
      ],
    );
  }
}
