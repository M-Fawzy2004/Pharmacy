import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_app/constant.dart';
import 'package:pharmacy_app/core/helper/custom_snak_bar.dart';
import 'package:pharmacy_app/core/widget/custom_modal_progress_hud.dart';
import 'package:pharmacy_app/feature/auth/presentation/manager/sign_up/sign_up_cubit.dart';
import 'package:pharmacy_app/feature/auth/presentation/view/widget/sign_up_view_body.dart';

class SignUpBlocConsumer extends StatelessWidget {
  const SignUpBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            buildSnakBarError(
              'Sign in successfully',
              backgroundColor: kBlueColor,
            ),
          );
        }
        if (state is SignUpFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            buildSnakBarError(
              state.message,
            ),
          );
        }
      },
      builder: (context, state) {
        return CustomModalProgressHUD(
          text: 'Account is being created',
          inAsyncCall: state is SignUpLoading,
          child: SignUpViewBody(),
        );
      },
    );
  }
}
