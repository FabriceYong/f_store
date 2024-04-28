import 'package:f_store/common/widgets/images/rounded_image.dart';
import 'package:f_store/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:f_store/common/widgets/texts/product_title_text.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FCartItem extends StatelessWidget {
  const FCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image
        FRoundedImage(
          fit: BoxFit.contain,
          imageUrl: FImages.productImage2,
          width: 50,
          height: 50,
          padding: const EdgeInsets.all(FSizes.sm),
          backgroundColor: Theme.of(context).brightness == Brightness.dark
              ? FColors.darkerGrey
              : FColors.light,
        ),
        const Gap(FSizes.spaceBetweenSections),

        /// Title, Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FBrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(
                  child: FProductTitleText(
                      title: 'Black Sports Shoes', maxLines: 1)),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color ',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 12,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? FColors.grey.withOpacity(.8)
                              : FColors.darkerGrey),
                    ),
                    TextSpan(
                        text: 'Green ',
                        style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(
                      text: 'Size ',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 12,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? FColors.grey.withOpacity(.8)
                              : FColors.darkerGrey),
                    ),
                    TextSpan(
                        text: 'UK 08',
                        style: Theme.of(context).textTheme.bodyLarge)
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
