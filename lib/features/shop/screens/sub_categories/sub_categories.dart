import 'package:f_store/common/widgets/appbar/appbar.dart';
import 'package:f_store/common/widgets/images/rounded_image.dart';
import 'package:f_store/common/widgets/products/product_cards/product_cards_horizontal.dart';
import 'package:f_store/common/widgets/texts/section_heading.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FAppBar(
        title: Text('Sports'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(FSizes.spaceBetweenItems),
          child: Column(
            children: [
              const FRoundedImage(
                imageUrl: FImages.promoBanner2,
                applyImageRadius: true,
                width: double.infinity,
              ),
              const Gap(FSizes.spaceBetweenSections),
              Column(
                children: [
                  const FSectionHeading(title: 'Sports Shirts'),
                  const Gap(FSizes.spaceBetweenItems / 3),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_, __) =>
                          const Gap(FSizes.spaceBetweenItems),
                      itemBuilder: (context, index) =>
                          const FProductCardHorizontal(),
                    ),
                  ),
                  const Gap(FSizes.spaceBetweenSections * .7),
                  const FSectionHeading(title: 'Shoes'),
                  const Gap(FSizes.spaceBetweenItems / 3),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_, __) =>
                          const Gap(FSizes.spaceBetweenItems),
                      itemBuilder: (context, index) =>
                          const FProductCardHorizontal(),
                    ),
                  ),
                  const Gap(FSizes.spaceBetweenSections * .7),
                  const FSectionHeading(title: 'New Arrivals'),
                  const Gap(FSizes.spaceBetweenItems / 3),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_, __) =>
                          const Gap(FSizes.spaceBetweenItems),
                      itemBuilder: (context, index) =>
                          const FProductCardHorizontal(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
