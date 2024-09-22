import 'package:dalel_app/core/constants/route_constant.dart';
import 'package:dalel_app/core/functions/custom_navigate.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/core/widgets/custom_btn.dart';
import 'package:dalel_app/features/on_boarding/data/on_boarding_data_list.dart';
import 'package:dalel_app/features/on_boarding/presentation/views/widgets/get_buttons.dart';
import 'package:dalel_app/features/on_boarding/presentation/views/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currentPage=0;
  PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            children: [
              const SizedBox(height: 40,),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () => customPushReplacementNavigate(context,AppRoute.signUpView),
                  child: Text(
                    AppStrings.skip,style: CustomTextStyles.poppins300style16.copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
              ),
               OnBoardingBody(controller: controller,onPageChanged: (pageIndex) {
                 setState(() {
                   currentPage=pageIndex;
                 });
               },),
              const SizedBox(height: 70,),
              GetButtons(currentPage: currentPage,controller: controller,),
              const SizedBox(height: 15,)
             
            ],
          ),
        ),
      ),
    );
  }
}

