import 'package:f_store/common/icons/circular_icon.dart';
import 'package:f_store/common/styles/shadow_styles.dart';
import 'package:f_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:f_store/common/widgets/images/rounded_image.dart';
import 'package:f_store/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:f_store/common/widgets/texts/product_price.dart';
import 'package:f_store/common/widgets/texts/product_title_text.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class FProductCartVertical extends StatelessWidget {
  const FProductCartVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [FShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(FSizes.productImageRadius),
          color: Theme.of(context).brightness == Brightness.dark
              ? FColors.darkerGrey
              : FColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Thumbnail, Wishlist button, Discount Tag
            FRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(FSizes.sm),
              backgroundColor: Theme.of(context).brightness == Brightness.dark
                  ? FColors.dark
                  : FColors.light,
              child: Stack(
                children: [
                  /// -- Thumbnail image
                  const FRoundedImage(
                    imageUrl: FImages.productImage1,
                    applyImageRadius: true,
                  ),

                  /// -- Sale Tag
                  Positioned(
                    top: 12,
                    child: FRoundedContainer(
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
                  ),

                  /// Favourite Icon Button
                  const Positioned(
                    right: 0.0,
                    top: 0.0,
                    child: FCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),

            const Gap(
              FSizes.spaceBetweenItems / 2,
            ),

            /// Details
            const Padding(
              padding: EdgeInsets.only(left: FSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  Gap(
                    FSizes.spaceBetweenItems / 2,
                  ),
                  FBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                  ),
                ],
              ),
            ),

            const Spacer(),
            // const Gap(18),

            /// Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// product price
                const Padding(
                  padding: EdgeInsets.only(left: FSizes.sm),
                  child: FProductPriceText(
                    price: '35.0',
                  ),
                ),

                /// Icon Container
                Container(
                  decoration: const BoxDecoration(
                    color: FColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(FSizes.cardRadiusMd),
                      bottomRight: Radius.circular(FSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: FSizes.iconLg * 1.2,
                    height: FSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: FColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
