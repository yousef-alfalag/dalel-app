import 'package:dalel_app/core/constants/route_constant.dart';
import 'package:dalel_app/core/functions/custom_navigate.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/features/auth/presentation/widgets/custom_sign_in_form.dart';
import 'package:dalel_app/features/auth/presentation/widgets/custom_welcome_banner.dart';
import 'package:dalel_app/features/auth/presentation/widgets/have_an_account_widget.dart';
import 'package:dalel_app/features/auth/presentation/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: CustomWelcomeBanner(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
          const SliverToBoxAdapter(
            child: WelcomeTextWidget(text: AppStrings.welcomeBack),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomSignInForm(),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
              child: CreateOrHaveAnAccountWidget(
            text1: AppStrings.dontHaveAnAccount,
            text2: AppStrings.signUp,
            onTap: () =>
                customPushReplacementNavigate(context, AppRoute.signUpView),
          )),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
        ],
      ),
    );
  }
}
