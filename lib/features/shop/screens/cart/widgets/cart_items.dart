import 'package:f_store/common/widgets/products/cart/product_cart/add_and_remove_button.dart';
import 'package:f_store/common/widgets/products/cart/product_cart/cart_item.dart';
import 'package:f_store/common/widgets/texts/product_price.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FCartItems extends StatelessWidget {
  const FCartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      separatorBuilder: (_, __) => const Gap(FSizes.spaceBetweenItems),
      itemBuilder: (context, index) {
        return Column(
          children: [
            /// Cart Item
            const FCartItem(),
            if (showAddRemoveButtons) const Gap(FSizes.spaceBetweenItems),
            if (showAddRemoveButtons)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Add & Remove Buttons
                  Row(
                    children: [
                      Gap(80),
                      FProductQuantityWithAddRemoveButton(),
                    ],
                  ),
                  FProductPriceText(price: '256'),
                ],
              )
          ],
        );
      },
    );
  }
}
