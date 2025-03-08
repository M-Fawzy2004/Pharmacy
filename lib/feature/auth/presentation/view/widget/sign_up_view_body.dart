import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/utils/assets.dart';
import 'package:pharmacy_app/core/widget/custom_button.dart';
import 'package:pharmacy_app/core/widget/product_view_header.dart';
import 'package:pharmacy_app/feature/auth/presentation/view/sign_in_view.dart';
import 'package:pharmacy_app/feature/auth/presentation/view/widget/custom_form_text_field.dart';
import 'package:pharmacy_app/feature/auth/presentation/view/widget/custom_or_login.dart';
import 'package:pharmacy_app/feature/auth/presentation/view/widget/different_sign_in.dart';
import 'package:pharmacy_app/feature/auth/presentation/view/widget/not_have_and_have_account.dart';
import 'package:pharmacy_app/feature/auth/presentation/view/widget/terms_and_condition.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
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

          // text field full name
          CustomTextFormField(
            hintText: 'Full Name',
            isPassword: false,
          ),

          // size box height
          SizedBox(
            height: screenHeight * .01,
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
            height: screenHeight * .035,
          ),

          // terms and conditions
          TermsAndCondition(
            isAccepted: isTermsAccepted,
            onChanged: (val) {
              setState(
                () {
                  isTermsAccepted = val;
                },
              );
            },
          ),

          // size box height
          SizedBox(
            height: screenHeight * .04,
          ),

          // sign up button
          CustomButton(
            text: 'Sign Up',
            onTap: () {},
          ),

          // size box height
          SizedBox(
            height: screenHeight * .025,
          ),

          // or login
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
            title1: 'Already have an account? ',
            title2: 'Sign In',
            onTap: () {
              Navigator.pushNamed(context, SignInView.routeName);
            },
          ),
        ],
      ),
    );
  }
}
