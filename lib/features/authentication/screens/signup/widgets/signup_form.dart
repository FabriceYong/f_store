import 'package:f_store/features/authentication/screens/signup/widgets/terms_and_conditions_checkbox.dart';
import 'package:f_store/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:f_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FSignupForm extends StatelessWidget {
  const FSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: FTexts.firstName,
                    floatingLabelStyle: Theme.of(context).textTheme.labelMedium,
                    prefixIcon: const Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: FSizes.spaceBetweenInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: FTexts.lastName,
                    floatingLabelStyle: Theme.of(context).textTheme.labelMedium,
                    prefixIcon: const Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: FSizes.spaceBetweenInputFields,
          ),

          /// Username
          TextFormField(
            decoration: InputDecoration(
              labelText: FTexts.username,
              prefixIcon: const Icon(Iconsax.user_edit),
              floatingLabelStyle: Theme.of(context).textTheme.labelMedium,
            ),
          ),
          const SizedBox(
            height: FSizes.spaceBetweenInputFields,
          ),

          /// Email
          TextFormField(
            decoration: InputDecoration(
              labelText: FTexts.email,
              floatingLabelStyle: Theme.of(context).textTheme.labelMedium,
              prefixIcon: const Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(
            height: FSizes.spaceBetweenInputFields,
          ),

          /// Phone Number
          TextFormField(
            decoration: InputDecoration(
              labelText: FTexts.phoneNo,
              floatingLabelStyle: Theme.of(context).textTheme.labelMedium,
              prefixIcon: const Icon(Iconsax.call),
            ),
          ),
          const SizedBox(
            height: FSizes.spaceBetweenInputFields,
          ),

          /// Password
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: FTexts.password,
              floatingLabelStyle: Theme.of(context).textTheme.labelMedium,
              prefixIcon: const Icon(Iconsax.password_check),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Iconsax.eye_slash),
              ),
            ),
          ),
          const SizedBox(
            height: FSizes.spaceBetweenSections,
          ),

          /// Terms&Conditions checkbox
          const FTermsAndConditionsCheckbox(),

          const SizedBox(
            height: FSizes.spaceBetweenSections,
          ),

          /// Signup button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => const VerifyEmail());
              },
              child: const Text(
                FTexts.createAccount,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
