import 'package:f_store/common/widgets/appbar/appbar.dart';
import 'package:f_store/features/personalization/controllers/user_controller.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:f_store/utils/constants/text_strings.dart';
import 'package:f_store/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ReAuthLoginForm extends StatelessWidget {
  const ReAuthLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;

    return Scaffold(
      appBar: FAppBar(
        showBackArrow: true,
        title: Text(
          'Re-Authenticate User',
          style: TextStyle(
            color: Theme.of(context).brightness == Brightness.dark
                ? FColors.white
                : FColors.dark,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(FSizes.defaultSpace),
          child: Form(
            key: controller.reAuthFormKey,
            child: Column(
              children: [
                /// Email
                TextFormField(
                  controller: controller.verifyEmail,
                  validator: FValidator.validateEmail,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.direct_right),
                    labelText: FTexts.email,
                    floatingLabelStyle: TextStyle(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? FColors.white
                            : FColors.dark),
                  ),
                ),
                const Gap(FSizes.spaceBetweenInputFields),

                /// Password
                Obx(
                  () => TextFormField(
                    obscureText: controller.hidePassword.value,
                    controller: controller.verifyPassword,
                    validator: FValidator.validatePassword,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Iconsax.password_check),
                      labelText: FTexts.password,
                      floatingLabelStyle: TextStyle(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? FColors.white
                            : FColors.dark,
                      ),
                      suffixIcon: controller.hidePassword.value
                          ? IconButton(
                              onPressed: () {
                                controller.hidePassword.value =
                                    !controller.hidePassword.value;
                              },
                              icon: const Icon(Iconsax.eye_slash))
                          : IconButton(
                              onPressed: () {
                                controller.hidePassword.value =
                                    !controller.hidePassword.value;
                              },
                              icon: const Icon(Iconsax.eye),
                            ),
                    ),
                  ),
                ),
                const Gap(FSizes.defaultSpace),

                /// Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () =>
                        controller.reAuthenticateUserWithEmailAndPassword(),
                    child: const Text('Continue'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
