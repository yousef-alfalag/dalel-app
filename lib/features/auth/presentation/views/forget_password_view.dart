import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/core/utils/size_config.dart';
import 'package:dalel_app/features/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel_app/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:dalel_app/features/auth/presentation/widgets/forget_password_image.dart';
import 'package:dalel_app/features/auth/presentation/widgets/forget_password_subtitle.dart';
import 'package:dalel_app/features/auth/presentation/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: SizeConfig.defaultSize! * 10,
            ),
          ),
          const SliverToBoxAdapter(
            child: WelcomeTextWidget(text: AppStrings.forgotPasswordPage),
          ),
          const SliverToBoxAdapter(
            child: ForgetPasswordImage(),
          ),
          const SliverToBoxAdapter(
            child: ForgetPasswordSubtitle(),
          ),
          const SliverToBoxAdapter(),
        ],
      ),
    );
  }
}
class CustomForgetPasswordForm extends StatelessWidget {
  const CustomForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit=AuthCubit();
    return  Form(
      child: Column(
            children: [
              CustomTextFormField(
                onChanged: (emailAddress) {
                  authCubit.emailAddress = emailAddress;
                },
                labelText: AppStrings.emailAddress,
              ),]
    ));
  }
}


