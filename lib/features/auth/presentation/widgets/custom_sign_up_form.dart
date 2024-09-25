import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_btn.dart';
import 'package:dalel_app/features/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel_app/features/auth/auth_cubit/cubit/auth_state.dart';
import 'package:dalel_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:dalel_app/features/auth/presentation/widgets/terms_and_condition_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Form(
          child: Column(
            children: [
               CustomTextFormField(
                onChanged: (firstName) {
                  BlocProvider.of<AuthCubit>(context).firstName=firstName;
                },
                labelText: AppStrings.firstName,
              ),
               CustomTextFormField(
                onChanged:(lastName){
                   BlocProvider.of<AuthCubit>(context).lastName=lastName;
                } ,
                labelText: AppStrings.lastName,
              ),
               CustomTextFormField(
                 onChanged:(emailAddress){
                   BlocProvider.of<AuthCubit>(context).emailAddress=emailAddress;
                 } ,
                labelText: AppStrings.emailAddress,
              ),
               CustomTextFormField(
                 onChanged:(password){
                   BlocProvider.of<AuthCubit>(context).password=password;
                 } ,
                labelText: AppStrings.password,
              ),
              const TermsAndConditionWidget(),
              const SizedBox(
                height: 88,
              ),
              CustomBtn(
                text: AppStrings.signUp,
                onPressed: () {
                  BlocProvider.of<AuthCubit>(context).createUserWithEmailAndPassword();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
