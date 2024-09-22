import 'package:dalel_app/core/constants/route_constant.dart';
import 'package:dalel_app/core/functions/custom_navigate.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_btn.dart';
import 'package:dalel_app/features/on_boarding/data/on_boarding_data_list.dart';
import 'package:flutter/material.dart';

class GetButtons extends StatelessWidget {
  const GetButtons(
      {super.key, required this.currentPage, required this.controller});
  final int currentPage;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if (currentPage == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomBtn(
            text: AppStrings.createAccount,
            onPressed: () =>
                customPushReplacementNavigate(context, AppRoute.signUpView),
          ),
          GestureDetector(onTap: () => customPushReplacementNavigate(context,AppRoute.signInView),
            child: Text(AppStrings.loginNow))
        ],
      );
    } else {
      return CustomBtn(
        text: AppStrings.next,
        onPressed: () {
          controller.nextPage(
              duration: Duration(microseconds: 200), curve: Curves.bounceIn);
        },
      );
    }
  }
}
