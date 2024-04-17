import 'package:f_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:f_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:f_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:f_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:f_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:get/get.dart';
import 'package:f_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: FImages.OnBoardingImage1,
                title: FTexts.onBoardingTitle1,
                subTitle: FTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: FImages.OnBoardingImage2,
                subTitle: FTexts.onBoardingSubTitle2,
                title: FTexts.onBoardingTitle2,
              ),
              OnBoardingPage(
                image: FImages.OnBoardingImage3,
                subTitle: FTexts.onBoardingSubTitle3,
                title: FTexts.onBoardingTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigator SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// Circular button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
