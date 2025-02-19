import 'package:dalel_app/core/constants/route_constant.dart';
import 'package:dalel_app/core/functions/custom_navigate.dart';
import 'package:dalel_app/core/functions/custom_toast.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_btn.dart';
import 'package:dalel_app/features/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel_app/features/auth/auth_cubit/cubit/auth_state.dart';
import 'package:dalel_app/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:dalel_app/features/auth/presentation/widgets/forget_password_Text_Widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignInSuccessState) {
          FirebaseAuth.instance.currentUser!.emailVerified
              ? customPushReplacementNavigate(context, AppRoute.homeView)
              : showToast("Please Verify Your Email");
        } else if (state is SignInFailureState) {
          showToast(state.errorMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signInFormKay,
          child: Column(
            children: [
              CustomTextFormField(
                onChanged: (emailAddress) {
                  authCubit.emailAddress = emailAddress;
                },
                labelText: AppStrings.emailAddress,
              ),
              CustomTextFormField(
                obscureText: authCubit.showOrHideTextValue,
                icon: authCubit.icon,
                iconButtonOnPressed: authCubit.showOrHideText,
                onChanged: (password) {
                  authCubit.password = password;
                },
                labelText: AppStrings.password,
              ),
              const SizedBox(
                height: 16,
              ),
              const ForgetPasswordTextWidget(),
              const SizedBox(
                height: 88,
              ),
              state is SignInLoadingState
                  ? const CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )
                  : CustomBtn(
                      text: AppStrings.signIn,
                      onPressed: () {
                        if (authCubit.signInFormKay.currentState!.validate()) {
                          authCubit.signInWithEmailAndPassword();
                        }
                      },
                    ),
            ],
          ),
        );
      },
    );
  }
}
