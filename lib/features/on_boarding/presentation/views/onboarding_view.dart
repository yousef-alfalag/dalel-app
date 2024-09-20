import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/core/widgets/custom_btn.dart';
import 'package:dalel_app/features/on_boarding/presentation/views/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 40,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  AppStrings.skip,style: CustomTextStyles.poppins300style16.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
              const OnBoardingBody(),
              const CustomBtn(text: AppStrings.next ),
              const SizedBox(height: 15,)
             
            ],
          ),
        ),
      ),
    );
  }
}
