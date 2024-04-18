import 'package:f_store/common/styles/spacing_styles.dart';
import 'package:f_store/common/widgets/success_screen/success_screen.dart';
import 'package:f_store/features/authentication/screens/login/login.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:f_store/utils/constants/text_strings.dart';
import 'package:f_store/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: FSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Image
              Image(
                image: const AssetImage(FImages.deliveredEmailIllustration),
                width: FHelperFunctions.screenWidth() + 6,
              ),
              const SizedBox(
                height: FSizes.spaceBetweenItems,
              ),

              /// Title & SubTitle
              Text(
                FTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: FSizes.spaceBetweenItems,
              ),

              Text(
                'fabrice@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: FSizes.spaceBetweenItems,
              ),

              Text(
                FTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: FSizes.spaceBetweenSections,
              ),

              /// Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAll(
                      () => SuccessScreen(
                        image: FImages.staticSuccessIllustration,
                        title: FTexts.yourAccountCreatedTitle,
                        subTitle: FTexts.yourAccountCreatedSubTitle,
                        onPressed: () => Get.offAll(
                          () => const LoginScreen(),
                        ),
                      ),
                    );
                  },
                  child: const Text(FTexts.tContinue),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    FTexts.resendEmail,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
