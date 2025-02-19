import 'package:dalel_app/core/constants/route_constant.dart';
import 'package:dalel_app/core/database/locale/cache/cache_helper.dart';
import 'package:dalel_app/core/functions/custom_navigate.dart';
import 'package:dalel_app/core/services/service_locator.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool isOnBoardingVisited =
        getIt<CacheHelper>().getData(key: "isOnboardingVisited") ?? false;
    if (isOnBoardingVisited) {
      FirebaseAuth.instance.currentUser == null
          ? delayedNavigate(context, AppRoute.signInView)
          : FirebaseAuth.instance.currentUser!.emailVerified == true
              ? delayedNavigate(context, AppRoute.homeView)
              : delayedNavigate(context, AppRoute.signInView);
    } else {
      delayedNavigate(context, AppRoute.onBoardingView);
    }
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

void delayedNavigate(context, path) {
  Future.delayed(const Duration(seconds: 2), () {
    customPushReplacementNavigate(context, path);
  });
}
