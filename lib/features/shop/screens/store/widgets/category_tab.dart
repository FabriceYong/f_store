import 'package:f_store/common/widgets/brands/brand_show_case.dart';
import 'package:f_store/common/widgets/layouts/grid_layout.dart';
import 'package:f_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:f_store/common/widgets/texts/section_heading.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FCategoryTab extends StatelessWidget {
  const FCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            children: [
              /// Brands
              const FBrandShowcase(
                images: [
                  FImages.productImage3,
                  FImages.productImage3,
                  FImages.productImage3
                ],
              ),
              const Gap(FSizes.defaultSpace),

              ///-- Products
              FSectionHeading(
                title: 'You might like',
                onPressed: () {},
              ),
              const Gap(FSizes.spaceBetweenItems),

              FGridLayout(
                itemCount: 4,
                itemBuilder: (context, index) => const FProductCardVertical(),
              ),
              const Gap(FSizes.spaceBetweenSections)
            ],
          ),
        ),
      ],
    );
  }
}
