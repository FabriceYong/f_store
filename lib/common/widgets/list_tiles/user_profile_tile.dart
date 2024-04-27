import 'package:f_store/features/personalization/screens/profile_settings/profile_settings.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FUserProfileTile extends StatelessWidget {
  const FUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
          backgroundImage: AssetImage(FImages.userProfileImage3)),
      title: Text(
        'Coding with Fabrice',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: FColors.white),
      ),
      subtitle: Text(
        'fabrice@gmail.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: FColors.white),
      ),
      trailing: IconButton(
        onPressed: () {
          Get.to(const UserProfileScreen());
        },
        icon: const Icon(
          Iconsax.edit,
          color: FColors.white,
        ),
      ),
    );
  }
}
