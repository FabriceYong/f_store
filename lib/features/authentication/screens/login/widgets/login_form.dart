import 'package:f_store/features/authentication/controllers/login/login_controller.dart';
import 'package:f_store/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:f_store/features/authentication/screens/signup/signup.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:f_store/utils/constants/text_strings.dart';
import 'package:f_store/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FLoginForm extends StatelessWidget {
  const FLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: FSizes.spaceBetweenSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              controller: controller.email,
              validator: (value) => FValidator.validateEmail(value),
              decoration: InputDecoration(
                  prefixIcon: const Icon(Iconsax.direct),
                  labelText: FTexts.email,
                  floatingLabelStyle: Theme.of(context).textTheme.labelMedium),
            ),
            const SizedBox(
              height: FSizes.spaceBetweenInputFields,
            ),
            Obx(
              () => TextFormField(
                controller: controller.password,
                validator: (value) => FValidator.validatePassword(value),
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.password_check),
                    suffixIcon: Obx(
                      () => IconButton(
                        icon: controller.hidePassword.value
                            ? const Icon(Iconsax.eye_slash)
                            : const Icon(Iconsax.eye),
                        onPressed: () => controller.hidePassword.value =
                            !controller.hidePassword.value,
                      ),
                    ),
                    labelText: FTexts.password,
                    floatingLabelStyle:
                        Theme.of(context).textTheme.labelMedium),
              ),
            ),
            const Gap(
              FSizes.spaceBetweenInputFields / 2,
            ),

            /// Remember Me and Forget Password

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember me
                Obx(
                  () => Row(
                    children: [
                      Checkbox(
                        value: controller.rememberMe.value,
                        onChanged: (value) => controller.rememberMe.value =
                            !controller.rememberMe.value,
                      ),
                      const Text(FTexts.rememberMe),
                    ],
                  ),
                ),

                /// Forgot Password
                TextButton(
                  onPressed: () {
                    Get.to(() => const ForgotPasswordScreen());
                  },
                  child: const Text(FTexts.forgotPassword),
                ),
              ],
            ),
            const Gap(
              FSizes.spaceBetweenSections,
            ),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.emailAndPasswordSignIn(),
                child: const Text(FTexts.signIn),
              ),
            ),

            const Gap(
              FSizes.spaceBetweenItems,
            ),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(() => const SignupScreen());
                },
                child: const Text(FTexts.createAccount),
              ),
            )
          ],
        ),
      ),
    );
  }
}
