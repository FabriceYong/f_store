import 'package:f_store/features/authentication/controllers/signup/signup_controller.dart';
import 'package:f_store/features/authentication/screens/signup/widgets/terms_and_conditions_checkbox.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:f_store/utils/constants/text_strings.dart';
import 'package:f_store/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FSignupForm extends StatelessWidget {
  const FSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());

    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  validator: (value) =>
                      FValidator.validateEmptyText('First name', value),
                  controller: controller.firstName,
                  expands: false,
                  decoration: InputDecoration(
                    labelText: FTexts.firstName,
                    floatingLabelStyle: Theme.of(context).textTheme.labelMedium,
                    prefixIcon: const Icon(Iconsax.user),
                  ),
                ),
              ),
              const Gap(
                FSizes.spaceBetweenInputFields,
              ),
              Expanded(
                child: TextFormField(
                  validator: (value) =>
                      FValidator.validateEmptyText('Last name', value),
                  controller: controller.lastName,
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
          const Gap(
            FSizes.spaceBetweenInputFields,
          ),

          /// Username
          TextFormField(
            validator: (value) =>
                FValidator.validateEmptyText('Last name', value),
            controller: controller.username,
            decoration: InputDecoration(
              labelText: FTexts.username,
              prefixIcon: const Icon(Iconsax.user_edit),
              floatingLabelStyle: Theme.of(context).textTheme.labelMedium,
            ),
          ),
          const Gap(
            FSizes.spaceBetweenInputFields,
          ),

          /// Email
          TextFormField(
            controller: controller.email,
            validator: (value) => FValidator.validateEmail(value),
            decoration: InputDecoration(
              labelText: FTexts.email,
              floatingLabelStyle: Theme.of(context).textTheme.labelMedium,
              prefixIcon: const Icon(Iconsax.direct),
            ),
          ),
          const Gap(
            FSizes.spaceBetweenInputFields,
          ),

          /// Phone Number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => FValidator.validatePhoneNumber(value),
            decoration: InputDecoration(
              labelText: FTexts.phoneNo,
              floatingLabelStyle: Theme.of(context).textTheme.labelMedium,
              prefixIcon: const Icon(Iconsax.call),
            ),
          ),
          const Gap(
            FSizes.spaceBetweenInputFields,
          ),

          /// Password
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => FValidator.validatePassword(value),
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                labelText: FTexts.password,
                floatingLabelStyle: Theme.of(context).textTheme.labelMedium,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value =
                      !controller.hidePassword.value,
                  icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),
                ),
              ),
            ),
          ),
          const Gap(
            FSizes.spaceBetweenSections,
          ),

          /// Terms&Conditions checkbox
          const FTermsAndConditionsCheckbox(),

          const Gap(
            FSizes.spaceBetweenSections,
          ),

          /// Signup button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                controller.signup();
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
