import 'package:f_store/common/widgets/brands/brand_card.dart';
import 'package:f_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FBrandShowcase extends StatelessWidget {
  const FBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return FRoundedContainer(
      showBorder: true,
      borderColor: FColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(FSizes.md),
      margin: const EdgeInsets.only(bottom: FSizes.spaceBetweenItems),
      child: Column(
        children: [
          /// Brand with Products Count
          FBrandCard(
            showBorder: true,
            onTap: () {},
          ),

          const Gap(FSizes.spaceBetweenItems),

          /// Band To 3 Product Images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
      child: FRoundedContainer(
    height: 100,
    backgroundColor: Theme.of(context).brightness == Brightness.dark
        ? FColors.darkGrey
        : FColors.light,
    margin: const EdgeInsets.only(right: FSizes.sm),
    padding: const EdgeInsets.all(FSizes.md),
    child: Image(
      fit: BoxFit.contain,
      image: AssetImage(image),
    ),
  ));
}
