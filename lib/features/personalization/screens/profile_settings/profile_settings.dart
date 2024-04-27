import 'package:f_store/common/widgets/appbar/appbar.dart';
// import 'package:f_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:f_store/common/widgets/images/circular_image.dart';
import 'package:f_store/common/widgets/texts/section_heading.dart';
import 'package:f_store/features/personalization/screens/profile_settings/widgets/profile_menu.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              /// Profilr Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const FCircularImage(
                        image: FImages.user_avatar, width: 80, height: 80),
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

              FProfileMenu(
                title: 'Name',
                value: 'Coding with Fabrice',
                onPressed: () {},
              ),
              FProfileMenu(
                  title: 'Username',
                  onPressed: () {},
                  value: 'coding_with_fabrice'),

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
              FProfileMenu(
                title: 'User ID',
                onPressed: () {},
                value: '23423213',
                icon: Iconsax.copy,
              ),
              FProfileMenu(
                  title: 'E-Mail',
                  onPressed: () {},
                  value: 'fabrice@gmail.com'),
              FProfileMenu(
                title: 'Phone Number',
                value: '+012-345-34356',
                onPressed: () {},
              ),
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
                  onPressed: () {},
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
