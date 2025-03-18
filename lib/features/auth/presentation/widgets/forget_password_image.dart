import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class ForgetPasswordImage extends StatelessWidget {
  const ForgetPasswordImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * 23,
      width: SizeConfig.defaultSize! * 23,
      child: Image.asset(Assets.imagesForgotPassword),
    );
  }
}