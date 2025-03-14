import 'package:flutter/material.dart';
import 'package:pharmacy_app/constant.dart';
import 'package:pharmacy_app/core/helper/app_styles.dart';
import 'package:pharmacy_app/feature/home/presentation/view/widget/quantity_order.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            height: screenHeight * 0.15,
            width: screenWidth * 0.3,
          ),
          SizedBox(
            width: screenWidth * 0.03,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'رانيتاك 150 ملجم',
                style: Styles.fontText16(context).copyWith(
                  color: kBlueColor,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Text(
                'صحة الجهاز الهضمي',
                style: Styles.fontText13(context),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Text(
                '20 جنيه',
                style: Styles.fontText13(context).copyWith(
                  color: kBlueColor,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              QuantityWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
