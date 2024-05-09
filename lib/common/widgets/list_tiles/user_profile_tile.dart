import 'package:f_store/common/widgets/images/circular_image.dart';
import 'package:f_store/common/widgets/shimmer/shimmer_effect.dart';
import 'package:f_store/features/personalization/controllers/user_controller.dart';
import 'package:f_store/features/personalization/screens/profile_settings/profile_settings.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FUserProfileTile extends StatelessWidget {
  const FUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentUser = UserController.instance;

    return Obx(
      () => ListTile(
        leading: currentUser.loading.value
            ? const FShimmerEffect(
                width: 60,
                height: 60,
                radius: 100,
              )
            : (currentUser.user.value.profilePicture == ''
                ? const FCircularImage(
                    isNetworkImage: true,
                    image:
                        'https://cdn-icons-png.freepik.com/512/6596/6596121.png',
                    width: 60,
                    height: 60,
                    padding: 0,
                    backgroundColor: Colors.transparent,
                  )
                : FCircularImage(
                    width: 60,
                    height: 60,
                    padding: 0,
                    isNetworkImage: true,
                    backgroundColor: Colors.transparent,
                    image: currentUser.user.value.profilePicture)),
        title: currentUser.loading.value
            ? const FShimmerEffect(width: 80, height: 15)
            : Text(
                currentUser.user.value.fullName,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(color: FColors.white),
              ),
        subtitle: currentUser.loading.value
            ? const FShimmerEffect(width: 80, height: 15)
            : Text(
                currentUser.user.value.email,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(color: FColors.white),
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
      ),
    );
  }
}
