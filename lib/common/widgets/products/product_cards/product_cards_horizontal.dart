import 'package:f_store/common/icons/circular_icon.dart';
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

class FProductCardHorizontal extends StatelessWidget {
  const FProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(FSizes.productImageRadius),
        color: Theme.of(context).brightness == Brightness.dark
            ? FColors.darkerGrey
            : FColors.softGrey,
      ),
      child: Row(
        children: [
          FRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(1),
            child: Stack(
              children: [
                /// Thumbnail
                SizedBox(
                  height: 120,
                  width: 120,
                  child: FRoundedImage(
                    backgroundColor:
                        Theme.of(context).brightness == Brightness.dark
                            ? FColors.dark
                            : FColors.light,
                    imageUrl: FImages.productImage6,
                    applyImageRadius: true,
                  ),
                ),

                /// Sales tag
                Positioned(
                  top: 5,
                  left: 5,
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
                          .apply(color: Colors.black),
                    ),
                  ),
                ),

                /// Favourite Icon Button
                const Positioned(
                  top: 0,
                  right: 0,
                  child: FCircularIcon(
                    width: 30,
                    height: 30,
                    size: 20,
                    icon: Iconsax.heart,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),

          /// Details
          SizedBox(
            width: 186,
            child: Padding(
              padding: const EdgeInsets.only(left: FSizes.sm, top: FSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FProductTitleText(
                        title: 'White & Black Nike Slippers',
                        smallSize: true,
                      ),
                      Gap(FSizes.spaceBetweenItems / 2),
                      FBrandTitleWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Price
                      const Flexible(child: FProductPriceText(price: '325.99')),

                      /// Add to cart
                      Container(
                        decoration: const BoxDecoration(
                          color: FColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(FSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(FSizes.productImageRadius),
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
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
