import 'package:f_store/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:f_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(FSizes.defaultSpace),
        child: Column(
          children: [
            /// Headings
            Text(
              FTexts.forgotPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: FSizes.spaceBetweenItems,
            ),
            Text(
              FTexts.forgotPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: FSizes.spaceBetweenSections * 2,
            ),

            /// TextField
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.direct),
                labelText: FTexts.email,
                floatingLabelStyle: Theme.of(context).textTheme.labelMedium,
              ),
            ),

            const SizedBox(
              height: FSizes.spaceBetweenSections,
            ),

            /// Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const ResetPasswordScreen());
                },
                child: const Text(FTexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
