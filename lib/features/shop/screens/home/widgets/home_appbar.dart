import 'package:f_store/common/products/cart/cart_counter_icon.dart';
import 'package:f_store/common/widgets/appbar/appbar.dart';
import 'package:f_store/common/widgets/shimmer/shimmer_effect.dart';
import 'package:f_store/features/personalization/controllers/user_controller.dart';
import 'package:f_store/features/shop/screens/cart/cart.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FHomeAppBar extends StatelessWidget {
  const FHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentUser = Get.put(UserController());

    return FAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            FTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: FColors.grey),
          ),
          Obx(() {
            if (currentUser.loading.value) {
              return const FShimmerEffect(width: 80, height: 15);
            } else {
              return Text(
                currentUser.user.value.fullName,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .apply(color: FColors.white),
              );
            }
          })
        ],
      ),
      actions: [
        FCartCounterIcon(
          onPressed: () => Get.to(() => const CartScreen()),
          iconColor: FColors.white,
        )
      ],
    );
  }
}
