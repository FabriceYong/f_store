import 'package:f_store/common/widgets/appbar/appbar.dart';
import 'package:f_store/common/widgets/brands/brand_card.dart';
import 'package:f_store/common/widgets/layouts/grid_layout.dart';
import 'package:f_store/common/widgets/texts/section_heading.dart';
import 'package:f_store/features/shop/screens/brands/brand_products.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class BrandsScreen extends StatelessWidget {
  const BrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              const FSectionHeading(
                title: 'Brands',
                showActionButton: false,
              ),
              const Gap(FSizes.spaceBetweenItems),

              /// Brands
              FGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => FBrandCard(
                  showBorder: true,
                  onTap: () {
                    Get.to(() => const BrandProducts());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
