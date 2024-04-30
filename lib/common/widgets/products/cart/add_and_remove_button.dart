import 'package:f_store/common/icons/circular_icon.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class FProductQuantityWithAddRemoveButton extends StatelessWidget {
  const FProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        FCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: FSizes.md,
          color: Theme.of(context).brightness == Brightness.dark
              ? FColors.light
              : FColors.darkerGrey,
        ),
        const Gap(FSizes.spaceBetweenItems),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const Gap(FSizes.spaceBetweenItems),
        const FCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: FSizes.md,
          color: FColors.white,
          backgroundColor: FColors.primary,
        )
      ],
    );
  }
}
