import 'package:f_store/common/widgets/appbar/appbar.dart';
// import 'package:f_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:f_store/common/widgets/images/circular_image.dart';
import 'package:f_store/common/widgets/shimmer/shimmer_effect.dart';
import 'package:f_store/common/widgets/texts/section_heading.dart';
import 'package:f_store/features/personalization/controllers/user_controller.dart';
import 'package:f_store/features/personalization/screens/profile_settings/widgets/change_name.dart';
import 'package:f_store/features/personalization/screens/profile_settings/widgets/profile_menu.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;

    return Scaffold(
      appBar: const FAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Obx(
                      () {
                        if (controller.loading.value) {
                          return const FShimmerEffect(
                            height: 80,
                            width: 80,
                            radius: 100,
                          );
                        } else {
                          if (controller.user.value.profilePicture == '') {
                            return const FCircularImage(
                              isNetworkImage: true,
                              image:
                                  'https://cdn-icons-png.freepik.com/512/6596/6596121.png',
                              width: 80,
                              height: 80,
                              padding: 0,
                              backgroundColor: Colors.transparent,
                            );
                          } else {
                            return FCircularImage(
                              isNetworkImage: true,
                              image: controller.user.value.profilePicture,
                              width: 80,
                              height: 80,
                              padding: 0,
                              backgroundColor: Colors.transparent,
                            );
                          }
                        }
                      },
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),
              const Gap(FSizes.spaceBetweenItems / 2),

              ///
              Divider(
                color: FColors.darkGrey.withOpacity(0.2),
                thickness: 2,
              ),
              const Gap(FSizes.spaceBetweenItems),
              const FSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const Gap(FSizes.spaceBetweenItems),

              Obx(() {
                if (controller.loading.value) {
                  return const FShimmerEffect(
                    height: 15,
                    width: 80,
                  );
                } else {
                  return FProfileMenu(
                    title: 'Name',
                    value: controller.user.value.fullName,
                    onPressed: () => Get.to(() => const ChangeName()),
                  );
                }
              }),
              Obx(() {
                if (controller.loading.value) {
                  return const FShimmerEffect(
                    height: 15,
                    width: 100,
                  );
                } else {
                  return FProfileMenu(
                    title: 'Username',
                    onPressed: () {},
                    value: controller.user.value.username,
                  );
                }
              }),

              const Gap(FSizes.spaceBetweenItems),
              Divider(
                color: FColors.darkGrey.withOpacity(0.2),
                thickness: 2,
              ),
              const Gap(FSizes.spaceBetweenItems),

              /// Heading and personal information
              const FSectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              Obx(() {
                if (controller.loading.value) {
                  return const FShimmerEffect(width: 80, height: 15);
                } else {
                  return FProfileMenu(
                    title: 'User ID',
                    onPressed: () {},
                    value: controller.user.value.id,
                    icon: Iconsax.copy,
                  );
                }
              }),
              Obx(() {
                if (controller.loading.value) {
                  return const FShimmerEffect(width: 80, height: 15);
                } else {
                  return FProfileMenu(
                    title: 'E-Mail',
                    onPressed: () {},
                    value: controller.user.value.email,
                  );
                }
              }),
              Obx(() {
                if (controller.loading.value) {
                  return const FShimmerEffect(width: 80, height: 15);
                } else {
                  return FProfileMenu(
                    title: 'Phone Number',
                    value: controller.user.value.phoneNumber,
                    onPressed: () {},
                  );
                }
              }),
              FProfileMenu(title: 'Gender', onPressed: () {}, value: 'Male'),
              FProfileMenu(
                title: 'Date of Birth',
                value: '10 Oct, 1995',
                onPressed: () {},
              ),

              Divider(
                color: FColors.darkGrey.withOpacity(0.2),
                thickness: 2,
              ),
              const Gap(FSizes.spaceBetweenItems),
              Center(
                child: TextButton(
                  onPressed: () => controller.deleteAccountWarningPopup(),
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
