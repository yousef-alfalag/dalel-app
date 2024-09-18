import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text(AppStrings.appName),),
    );
  }
}