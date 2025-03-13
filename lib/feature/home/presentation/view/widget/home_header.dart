import 'package:flutter/material.dart';
import 'package:pharmacy_app/constant.dart';
import 'package:pharmacy_app/core/helper/app_styles.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
    this.onTap,
    required this.imageRight,
    required this.imageLeft,
    required this.title,
  });

  final Function()? onTap;
  final String imageRight, imageLeft, title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Image.asset(
              imageRight,
              height: MediaQuery.sizeOf(context).height * 0.05,
            ),
          ),
          Spacer(),
          Text(
            title,
            style: Styles.fontText20(context).copyWith(
              color: kBlueColor,
              fontWeight: FontWeight.w800,
            ),
          ),
          Spacer(),
          Image.asset(
            imageLeft,
            height: MediaQuery.sizeOf(context).height * 0.05,
          ),
        ],
      ),
    );
  }
}
