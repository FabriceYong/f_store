import 'package:f_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:f_store/utils/device/device_utility.dart';
import 'package:f_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = FHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: FDeviceUtils.getBottomNavigationBarHeight() + 24,
      left: FSizes.defaultSpace,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? FColors.light : FColors.dark, dotHeight: 6),
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
      ),
    );
  }
}
