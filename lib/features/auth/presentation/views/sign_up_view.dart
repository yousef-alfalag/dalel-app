import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:dalel_app/features/auth/presentation/widgets/have_an_account_widget.dart';
import 'package:dalel_app/features/auth/presentation/widgets/terms_and_condition_widget.dart';
import 'package:dalel_app/features/auth/presentation/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(child: SizedBox(height: 125,),),
            SliverToBoxAdapter(child: WelcomeTextWidget(text: AppStrings.welcome,),),
            SliverToBoxAdapter(child: SizedBox(height: 16,),),
            SliverToBoxAdapter(child: CustomTextField(labelText: AppStrings.firstName,),),
            SliverToBoxAdapter(child: CustomTextField(labelText: AppStrings.lastName,),),
            SliverToBoxAdapter(child: CustomTextField(labelText: AppStrings.emailAddress,),),
            SliverToBoxAdapter(child: CustomTextField(labelText: AppStrings.password,),),
            SliverToBoxAdapter(child: TermsAndConditionWidget()),
            SliverToBoxAdapter(child: SizedBox(height: 88,),),
            SliverToBoxAdapter(child: CustomTextField(labelText: AppStrings.signUp,),), 
            SliverToBoxAdapter(child: SizedBox(height: 16,),),
            SliverToBoxAdapter(child: HaveAnAccountWidget(text1: AppStrings.alreadyHaveAnAccount,text2: AppStrings.signIn,),),              SliverToBoxAdapter(child: SizedBox(height: 16,),),
            

          ],
        ),
      ),
    );
  }
}
