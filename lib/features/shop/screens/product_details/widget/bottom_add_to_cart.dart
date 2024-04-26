import 'package:f_store/common/icons/circular_icon.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class FBottomAddToCart extends StatelessWidget {
  const FBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: FSizes.defaultSpace, vertical: FSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? FColors.darkerGrey
            : FColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(FSizes.cardRadiusLg),
          topRight: Radius.circular(FSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const FCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: FColors.darkGrey,
                color: FColors.white,
                width: 40,
                height: 40,
              ),
              const Gap(FSizes.spaceBetweenItems),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const Gap(FSizes.spaceBetweenItems),
              const FCircularIcon(
                icon: Iconsax.add,
                color: FColors.white,
                backgroundColor: FColors.black,
                width: 40,
                height: 40,
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(FSizes.md),
              backgroundColor: FColors.black,
              side: const BorderSide(color: FColors.black),
            ),
            onPressed: () {},
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
