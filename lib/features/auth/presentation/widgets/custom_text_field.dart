import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.labelText, this.onChanged, this.onFieldSubmitted});
  final String labelText;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0,left: 8,top: 24),
      child: TextFormField(
        onChanged:onChanged ,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
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
