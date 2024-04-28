
import "package:f_store/common/widgets/appbar/appbar.dart";
import "package:f_store/features/shop/screens/cart/widgets/cart_items.dart";
import "package:f_store/features/shop/screens/checkout/widgets/checkout.dart";
import "package:f_store/utils/constants/sizes.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(FSizes.defaultSpace),
        child: FCartItems(),
      ),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.zero,
                bottomRight: Radius.zero,
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15)),
          ),
        ),

        /// Checkout Button
        onPressed: () {
          Get.to(() => const Checkout());
        },
        child: const Text('Checkout \$256.0'),
      ),
    );
  }
}
