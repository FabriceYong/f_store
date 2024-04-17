import 'package:f_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:f_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: FDeviceUtils.getAppBarHeight(),
      right: FSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          OnBoardingController.instance.skipPage();
        },
        child: const Text(
          'Skip',
        ),
      ),
    );
  }
}
