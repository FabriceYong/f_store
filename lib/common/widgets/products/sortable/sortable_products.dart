import 'package:f_store/common/widgets/layouts/grid_layout.dart';
import 'package:f_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class FSortableProducts extends StatelessWidget {
  const FSortableProducts({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown,
        DropdownButtonFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort),
          ),
          items: const [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map(
                (option) => DropdownMenuItem(
                  value: option,
                  child: Text(option),
                ),
              )
              .toList(),
          onChanged: (value) {},
        ),

        const Gap(FSizes.spaceBetweenSections),

        FGridLayout(
            itemCount: 6,
            itemBuilder: (_, index) => const FProductCardVertical())
      ],
    );
  }
}
