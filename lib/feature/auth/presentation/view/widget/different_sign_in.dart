import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/utils/assets.dart';

class DifferentSignIn extends StatelessWidget {
  const DifferentSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey.shade100,
      ),
      child: Center(
        child: Image.asset(
          Assets.imagesGoogle,
          height: 30,
        ),
      ),
    );
  }
}
