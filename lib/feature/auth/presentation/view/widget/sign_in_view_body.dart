import 'package:flutter/material.dart';
import 'package:pharmacy_app/constant.dart';
import 'package:pharmacy_app/core/helper/app_styles.dart';
import 'package:pharmacy_app/core/utils/assets.dart';
import 'package:pharmacy_app/core/widget/custom_button.dart';
import 'package:pharmacy_app/core/widget/product_view_header.dart';
import 'package:pharmacy_app/feature/auth/presentation/view/sign_up_view.dart';
import 'package:pharmacy_app/feature/auth/presentation/view/widget/custom_form_text_field.dart';
import 'package:pharmacy_app/feature/auth/presentation/view/widget/custom_or_login.dart';
import 'package:pharmacy_app/feature/auth/presentation/view/widget/different_sign_in.dart';
import 'package:pharmacy_app/feature/auth/presentation/view/widget/not_have_and_have_account.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        // size box height
        SizedBox(
          height: screenHeight * .02,
        ),

        // icon back
        ProductViewHeader(
          title: '',
        ),

        // size box height
        SizedBox(
          height: screenHeight * .015,
        ),

        // logo
        Image.asset(Assets.imagesLogoblue),

        // size box height
        SizedBox(
          height: screenHeight * .05,
        ),

        // text field email
        CustomTextFormField(
          hintText: 'Email',
          isPassword: false,
        ),

        // size box height
        SizedBox(
          height: screenHeight * .01,
        ),

        // text field password
        CustomTextFormField(
          hintText: 'Password',
          isPassword: true,
        ),

        // size box height
        SizedBox(
          height: screenHeight * .04,
        ),

        // sign up button
        CustomButton(
          text: 'Sign In',
          onTap: () {},
        ),

        // size box height
        SizedBox(
          height: screenHeight * .025,
        ),

        Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: Text(
                'Forgot Password?',
                style: Styles.fontText13(context).copyWith(color: kBlueColor),
              ),
            ),
          ],
        ),

        // size box height
        SizedBox(
          height: screenHeight * .025,
        ),

        // OR
        CutomOrLogin(),

        // size box height
        SizedBox(
          height: screenHeight * .025,
        ),

        // different sign in
        DifferentSignIn(),

        // size box height
        SizedBox(
          height: screenHeight * .025,
        ),

        // not have account and have account
        NotHaveAccountAndHaveAccount(
          title1: 'Create an account? ',
          title2: 'Sign Up',
          onTap: () {
            Navigator.pushNamed(context, SignUpView.routeName);
          },
        ),
      ],
    );
  }
}
