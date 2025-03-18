import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class ForgetPasswordSubtitle extends StatelessWidget {
  const ForgetPasswordSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.forgotPasswordSubtitle,
      style: CustomTextStyles.poppins400style12.copyWith(fontSize: 14),
      textAlign: TextAlign.center,
    );
  }
}