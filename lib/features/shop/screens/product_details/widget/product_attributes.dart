import 'package:f_store/common/widgets/chips/choice_chip.dart';
import 'package:f_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:f_store/common/widgets/texts/product_price.dart';
import 'package:f_store/common/widgets/texts/product_title_text.dart';
import 'package:f_store/common/widgets/texts/section_heading.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FProductAttributes extends StatelessWidget {
  const FProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      /// -- Selected attributes pricing
      children: [
        FRoundedContainer(
          padding: const EdgeInsets.all(FSizes.md),
          backgroundColor: Theme.of(context).brightness == Brightness.dark
              ? FColors.darkerGrey
              : FColors.lightGrey,
          child: Column(
            /// Title, Price, and Stack Status
            children: [
              Row(
                children: [
                  const FSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const Gap(FSizes.spaceBetweenItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const FProductTitleText(
                            title: 'Price: ',
                            smallSize: true,
                          ),

                          /// Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),

                          /// Sale Price
                          const Gap(FSizes.spaceBetweenItems),
                          const FProductPriceText(price: '20')
                        ],
                      ),
                      Row(
                        children: [
                          const FProductTitleText(
                            title: 'Stock: ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const Gap(FSizes.spaceBetweenItems),

              /// Variation Description
              const FProductTitleText(
                title:
                    'This is the Description of the Product and it can go up to max 4 lines',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const Gap(FSizes.spaceBetweenItems),

        /// -- Attributes
        /// Colors
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FSectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            const Gap(FSizes.spaceBetweenItems / 2),
            Wrap(
              children: [
                FChoiceChip(
                  text: 'White',
                  selected: true,
                  onSelected: (value) {},
                ),
                FChoiceChip(
                  text: 'Green',
                  selected: false,
                  onSelected: (value) {},
                ),
                FChoiceChip(
                    text: 'Blue', selected: false, onSelected: (value) {}),
                FChoiceChip(
                    text: 'Red', selected: false, onSelected: (value) {}),
                FChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
                FChoiceChip(
                  text: 'Teal',
                  selected: false,
                  onSelected: (value) {},
                )
              ],
            )
          ],
        ),

        /// Sizes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FSectionHeading(
              title: 'Size',
              showActionButton: false,
            ),
            const Gap(FSizes.spaceBetweenItems / 2),
            Wrap(
              spacing: 8,
              children: [
                FChoiceChip(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                FChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                FChoiceChip(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (value) {},
                ),
                FChoiceChip(
                  text: 'EU 40',
                  selected: false,
                  onSelected: (value) {},
                ),
                FChoiceChip(
                  text: 'EU 42',
                  selected: false,
                  onSelected: (value) {},
                )
              ],
            )
          ],
        ),
        const Gap(FSizes.spaceBetweenItems)
      ],
    );
  }
}
