import 'package:flutter/material.dart';
import 'package:pharmacy_app/constant.dart';
import 'package:pharmacy_app/core/helper/app_styles.dart';
import 'package:pharmacy_app/core/utils/assets.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    this.onTap,
    required this.title,
  });

  final Function()? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Image.asset(
              Assets.imagesMdiCart,
              height: MediaQuery.sizeOf(context).height * 0.05,
              color: kBackgroundColor,
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
            Assets.imagesImagesRemovebgPreview,
            height: MediaQuery.sizeOf(context).height * 0.05,
          ),
        ],
      ),
    );
  }
}
