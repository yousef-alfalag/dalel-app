import 'package:dalel_app/core/constants/route_constant.dart';
import 'package:dalel_app/core/database/locale/cache/cache_helper.dart';
import 'package:dalel_app/core/functions/custom_navigate.dart';
import 'package:dalel_app/features/on_boarding/presentation/views/widgets/custom_nav_bar.dart';
import 'package:dalel_app/features/on_boarding/presentation/views/widgets/get_buttons.dart';
import 'package:dalel_app/features/on_boarding/presentation/views/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currentPage = 0;
  PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            children: [
              const SizedBox(
                height: 40,
              ),
              CustomNavBar(
                onTap: () {
                  CacheHelper().saveData(key: "isOnboardingVisited",data: true);
                  customPushReplacementNavigate(context, AppRoute.signUpView);
                },
              ),
              OnBoardingBody(
                controller: controller,
                onPageChanged: (pageIndex) {
                  setState(() {
                    currentPage = pageIndex;
                  });
                },
              ),
              const SizedBox(
                height: 70,
              ),
              GetButtons(
                currentPage: currentPage,
                controller: controller,
              ),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
