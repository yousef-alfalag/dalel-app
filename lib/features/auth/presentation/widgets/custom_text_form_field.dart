import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/features/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.labelText, this.onChanged, this.onFieldSubmitted, this.iconButtonOnPressed, this.icon, this.obscureText});
  final String labelText;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final void Function()? iconButtonOnPressed;
  final IconData? icon;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0,left: 8,top: 24),
      child: TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "this field is required !!"; 
        }else{
          return null;
        }
        
      },
        onChanged:onChanged ,
        onFieldSubmitted: onFieldSubmitted,
        obscureText: obscureText??false,
        decoration: InputDecoration(
        suffixIcon: IconButton(onPressed: iconButtonOnPressed, icon: Icon(icon)),
        labelText: labelText,
        labelStyle: CustomTextStyles.poppins500style18,
        enabledBorder:getBorderStyle() ,
        border: getBorderStyle(),
        focusedBorder: getBorderStyle()
        ),
      ),
    );
  }
}

OutlineInputBorder getBorderStyle(){
  return OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: AppColors.gray)
        );
}
