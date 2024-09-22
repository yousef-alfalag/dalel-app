import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/features/on_boarding/data/on_boarding_data_list.dart';
import 'package:dalel_app/features/on_boarding/presentation/views/widgets/custom_smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key, required this.controller, this.onPageChanged});
  final PageController controller;
  final Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 390,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        itemCount: onBoardingData.length,
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 243,
                height: 190,
                decoration:  BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(onBoardingData[index].image),
                        fit: BoxFit.fill)),
              ),
              const SizedBox(
                height: 24,
              ),
              CustomSmoothPageIndicator(
                controller: controller,
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                onBoardingData[index].title,
                style: CustomTextStyles.poppins500style24
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 16,
              ),
               Text(
                onBoardingData[index].subTitle,
                style: CustomTextStyles.poppins300style16,
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
