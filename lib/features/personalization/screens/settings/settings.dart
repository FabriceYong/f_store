import 'package:f_store/common/widgets/appbar/appbar.dart';
import 'package:f_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:f_store/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:f_store/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:f_store/common/widgets/texts/section_heading.dart';
import 'package:f_store/data/repositories/authentication_repository/authentication_repository.dart';
import 'package:f_store/features/personalization/screens/address/widgets/address.dart';
import 'package:f_store/features/shop/screens/cart/cart.dart';
import 'package:f_store/features/shop/screens/order/order_screen.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:f_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthenticationRepository());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header
            FPrimaryHeaderContainer(
              child: Column(
                children: [
                  FAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: FColors.white),
                    ),
                  ),
                  const Gap(FSizes.spaceBetweenSections),
                  const FUserProfileTile(),
                  const Gap(FSizes.spaceBetweenSections),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(FSizes.defaultSpace),
              child: Column(
                children: [
                  const FSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const Gap(FSizes.spaceBetweenItems),
                  FSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subTitle: 'Set shopping delivery address',
                    onTap: () {
                      Get.to(const FUserAddressScreen());
                    },
                  ),
                  FSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout',
                    onTap: () {
                      Get.to(() => const CartScreen());
                    },
                  ),
                  FSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In-progress and Completed Orders',
                    onTap: () {
                      Get.to(() => const OrderScreen());
                    },
                  ),
                  FSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank account',
                    onTap: () {},
                  ),
                  FSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted coupons',
                    onTap: () {},
                  ),
                  FSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any kind of notifications message',
                    onTap: () {},
                  ),
                  FSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected accounts',
                    onTap: () {},
                  ),
                  const Gap(FSizes.spaceBetweenSections),

                  /// -- App Settings
                  const FSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const Gap(FSizes.spaceBetweenItems),
                  FSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload Data to your Cloud Firebase',
                    onTap: () {},
                  ),

                  FSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),

                  FSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),

                  FSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  const Gap(FSizes.spaceBetweenSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 17),
                          backgroundColor: Colors.transparent),
                      onPressed: () => controller.logout(),
                      child: const Text(FTexts.logout),
                    ),
                  ),
                  const Gap(FSizes.defaultSpace),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
