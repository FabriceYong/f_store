import 'package:f_store/common/icons/circular_icon.dart';
import 'package:f_store/common/widgets/appbar/appbar.dart';
import 'package:f_store/common/widgets/layouts/grid_layout.dart';
import 'package:f_store/common/widgets/products/cart/product_cart/product_cart_vertical.dart';
import 'package:f_store/features/shop/screens/home/home.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          FCircularIcon(
            icon: Iconsax.add,
            color: Theme.of(context).brightness == Brightness.dark
                ? FColors.light
                : FColors.dark,
            onPressed: () => Get.to(
              const HomeScreen(),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            children: [
              FGridLayout(
                itemCount: 6,
                itemBuilder: (context, index) => const FProductCartVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
