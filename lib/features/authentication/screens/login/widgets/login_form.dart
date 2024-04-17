import 'package:f_store/utils/constants/sizes.dart';
import 'package:f_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FLoginForm extends StatelessWidget {
  const FLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: FSizes.spaceBetweenSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: FTexts.email,
              ),
            ),
            const SizedBox(
              height: FSizes.spaceBetweenInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: FTexts.password,
              ),
            ),
            const SizedBox(
              height: FSizes.spaceBetweenInputFields / 2,
            ),

            /// Remember Me and Forget Password

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember me
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    const Text(FTexts.rememberMe),
                  ],
                ),

                /// Forgot Password
                TextButton(
                  onPressed: () {},
                  child: const Text(FTexts.forgotPassword),
                ),
              ],
            ),
            const SizedBox(
              height: FSizes.spaceBetweenSections,
            ),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(FTexts.signIn),
              ),
            ),

            const SizedBox(
              height: FSizes.spaceBetweenItems,
            ),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(FTexts.createAccount),
              ),
            )
          ],
        ),
      ),
    );
  }
}
