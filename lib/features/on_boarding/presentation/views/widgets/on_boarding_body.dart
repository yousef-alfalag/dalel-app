import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(itemBuilder: (context, index) {
        return Column(children: [
          Image.asset(Assets.imagesOnBoarding1)
        ],);
      },),
    );
  }
}