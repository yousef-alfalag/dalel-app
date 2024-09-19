import 'package:dalel_app/core/constants/route_constant.dart';
import 'package:dalel_app/core/functions/custom_navigate.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    delayedNavigate(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        AppStrings.appName,
        style: CustomTextStyles.pacifico400style64,
      )),
    );
  }
}

void delayedNavigate(context) {
  Future.delayed(const Duration(seconds: 2), () {
    customNavigate(context, AppRoute.onBoardingView);
  });
}
