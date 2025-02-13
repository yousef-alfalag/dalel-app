import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomWelcomeBanner extends StatelessWidget {
  const CustomWelcomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            AppStrings.appName,
            style: CustomTextStyles.saira700style32,
          ),
          const SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(Assets.imagesVector1),
              SvgPicture.asset(Assets.imagesVector2),
            ],
          )
        ],
      ),
    );
  }
}