import 'package:f_store/common/widgets/appbar/appbar.dart';
import 'package:f_store/features/personalization/controllers/update_name_controller.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:f_store/utils/constants/text_strings.dart';
import 'package:f_store/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ChangeName extends StatelessWidget {
  const ChangeName({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateNameController());

    return Scaffold(
      appBar: FAppBar(
        showBackArrow: true,
        title: Text(
          'Change Name',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(FSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Headings
            Text(
              'Use real name for easy verification. This name will appear on several pages',
              style: Theme.of(context).textTheme.labelMedium,
            ),

            const Gap(FSizes.spaceBetweenSections),

            /// Text Field Animation
            Form(
              key: controller.updateUserNameFormKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: controller.firstName,
                    validator: (value) =>
                        FValidator.validateEmptyText('First Name', value),
                    expands: false,
                    decoration: InputDecoration(
                      labelText: FTexts.firstName,
                      prefixIcon: const Icon(Iconsax.user),
                      floatingLabelStyle: TextStyle(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? FColors.dark
                            : FColors.white,
                      ),
                    ),
                  ),
                  const Gap(FSizes.spaceBetweenInputFields),
                  TextFormField(
                    controller: controller.lastName,
                    validator: (value) =>
                        FValidator.validateEmptyText('Last Name', value),
                    expands: false,
                    decoration: InputDecoration(
                      labelText: FTexts.lastName,
                      prefixIcon: const Icon(
                        Iconsax.user,
                      ),
                      floatingLabelStyle: TextStyle(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? FColors.white
                            : FColors.dark,
                      ),
                    ),
                  ),
                  const Gap(FSizes.spaceBetweenSections),

                  /// Save Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => controller.updateUserName(),
                      child: const Text('Save'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
