import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/features/auth/presentation/widgets/custom_text_field.dart';
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
class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({super.key, required this.text1, required this.text2});
final String text1,text2;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text.rich(TextSpan(children: [TextSpan(text: text1,style: CustomTextStyles.poppins400style12),
      TextSpan(text: text2,style: CustomTextStyles.poppins400style12.copyWith(color: AppColors.lightGray)),])),
    );
  }
}


