import 'package:dalel_app/core/constants/route_constant.dart';
import 'package:dalel_app/core/functions/custom_navigate.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class ForgetPasswordTextWidget extends StatelessWidget {
  const ForgetPasswordTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        customPushReplacementNavigate(context, AppRoute.forgetPasswordView);
      },
      child: Align(
        alignment: Alignment.centerRight, 
        child: Text(AppStrings.forgotPassword,
        style: CustomTextStyles.poppins600style28.copyWith(fontSize: 12),),
      ),
    );
  }
}

