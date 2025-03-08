import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/helper/app_styles.dart';
import 'package:pharmacy_app/core/utils/assets.dart';
import 'package:pharmacy_app/core/widget/custom_button.dart';
import 'package:pharmacy_app/feature/auth/presentation/view/sign_up_view.dart';

class OnboardedViewBody extends StatelessWidget {
  const OnboardedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          Assets.imagesLogoblue,
        ),
        SizedBox(
          height: screenHeight * 0.05,
        ),
        Image.asset(
          Assets.imagesDoctor,
        ),
        SizedBox(
          height: screenHeight * 0.07,
        ),
        Text(
          'Connect with our best Doctors',
          style: Styles.fontText20(context),
        ),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Text(
          textAlign: TextAlign.center,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          'Recieve expert advice, Quality\n medicines, Accurate prescriptions\n and Affordable service',
          style: Styles.fontText13(context).copyWith(
            color: Colors.grey[500],
          ),
        ),
        SizedBox(
          height: screenHeight * 0.07,
        ),
        CustomButton(
          text: 'Next',
          onTap: () {
            Navigator.pushNamed(context, SignUpView.routeName);
          },
        )
      ],
    );
  }
}
