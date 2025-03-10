import 'package:flutter/material.dart';
import 'package:pharmacy_app/constant.dart';
import 'package:pharmacy_app/core/helper/app_styles.dart';
import 'package:pharmacy_app/core/utils/assets.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/featured_button.dart';

class OffersItem extends StatelessWidget {
  const OffersItem({super.key});
  

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.9,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kBackgroundColor,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // text
              Text(
                'Order medicine',
                style: Styles.fontText16(context).copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              // SizeBox
              SizedBox(
                height: screenHeight * 0.005,
              ),
              // text
              Text(
                'Upload prescription and tell us what \n you need. We’ll do the rest',
                style: Styles.fontText13(context).copyWith(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              // SizeBox
              SizedBox(
                height: screenHeight * 0.005,
              ),
              // offers
              Text(
                'Get Up to 30% off',
                style: Styles.fontText13(context).copyWith(
                  color: kBlueColor,
                  fontWeight: FontWeight.w900,
                ),
              ),
              // sizeBox
              SizedBox(
                height: screenHeight * 0.005,
              ),
              // button
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.5,
                child: FeaturedButton(
                  title: 'Get Offer',
                ),
              ),
            ],
          ),

          // image dr
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              Assets.imagesDr,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
