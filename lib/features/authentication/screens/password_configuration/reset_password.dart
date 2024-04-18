import 'package:f_store/utils/constants/image_strings.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:f_store/utils/constants/text_strings.dart';
// import 'package:f_store/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            children: [
              /// Image with 60% of screen width
              Image(
                image: const AssetImage(FImages.deliveredEmailIllustration),
                width: MediaQuery.of(Get.context!).size.width * 0.6,
              ),
              const SizedBox(
                height: FSizes.spaceBetweenSections,
              ),

              /// Title & SubTitle
              Text(
                FTexts.changeYourPaswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: FSizes.spaceBetweenItems,
              ),
              Text(
                FTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: FSizes.spaceBetweenSections,
              ),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(FTexts.done),
                ),
              ),
              const SizedBox(
                height: FSizes.spaceBetweenItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(FTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
