import 'package:f_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:f_store/common/widgets/images/circular_image.dart';
import 'package:f_store/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:f_store/common/widgets/texts/product_price.dart';
import 'package:f_store/common/widgets/texts/product_title_text.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/enums.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FProductMetaData extends StatelessWidget {
  const FProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            /// Sale Tag
            FRoundedContainer(
              radius: FSizes.sm,
              backgroundColor: FColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: FSizes.sm, vertical: FSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: FColors.black),
              ),
            ),
            const Gap(FSizes.spaceBetweenItems),

            /// Price
            Text(
              '\$25%',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const Gap(FSizes.spaceBetweenItems),
            const FProductPriceText(
              price: '175',
              isLarge: true,
            )
          ],
        ),
        const Gap(FSizes.spaceBetweenItems / 1.5),

        /// Title
        const FProductTitleText(title: 'White Nike Jordans'),
        const Gap(FSizes.spaceBetweenItems / 1.5),

        /// Stock Status
        Row(
          children: [
            const FProductTitleText(title: 'Status'),
            const Gap(FSizes.spaceBetweenItems),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            // const FBrandTitleText(
            //   title: 'Nike',
            //   brandTextSize: TextSizes.medium,
            // )
          ],
        ),

        const Gap(FSizes.spaceBetweenItems),

        /// Brands
        Row(
          children: [
            FCircularImage(
              image: FImages.shoes,
              width: 32,
              height: 32,
              overlayColor: Theme.of(context).brightness == Brightness.dark
                  ? FColors.white
                  : FColors.black,
            ),
            const Gap(FSizes.defaultSpace / 3),
            const FBrandTitleWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        ),
        const Gap(FSizes.spaceBetweenItems)
      ],
    );
  }
}
