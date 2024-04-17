import 'package:f_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:f_store/utils/device/device_utility.dart';
import 'package:f_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = FHelperFunctions.isDarkMode(context);

    return Positioned(
      right: FSizes.defaultSpace,
      bottom: FDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? FColors.primary : Colors.black),
        child: const Icon(
          Iconsax.arrow_right_3,
        ),
        onPressed: () {
          OnBoardingController.instance.nextPage();
        },
      ),
    );
  }
}
