import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_btn.dart';
import 'package:dalel_app/features/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel_app/features/auth/auth_cubit/cubit/auth_state.dart';
import 'package:dalel_app/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:dalel_app/features/auth/presentation/widgets/terms_and_condition_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signUpFormKay,
          child: Column(
            children: [
              CustomTextFormField(
                onChanged: (firstName) {
                  authCubit.firstName = firstName;
                },
                labelText: AppStrings.firstName,
              ),
              CustomTextFormField(
                onChanged: (lastName) {
                  authCubit.lastName = lastName;
                },
                labelText: AppStrings.lastName,
              ),
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
              const TermsAndConditionWidget(),
              const SizedBox(
                height: 88,
              ),
              CustomBtn(
                color: authCubit.termsAndConditionCheckBoxValue==false?AppColors.gray:null,
                text: AppStrings.signUp,
                onPressed: () {
                  if (authCubit.termsAndConditionCheckBoxValue) {
                    if (authCubit.signUpFormKay.currentState!.validate()) {
                      authCubit.createUserWithEmailAndPassword();
                    }
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
