import 'package:f_store/common/widgets/images/circular_image.dart';
import 'package:f_store/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/enums.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../custom_shapes/containers/rounded_container.dart';

class FBrandCard extends StatelessWidget {
  const FBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: FRoundedContainer(
        padding: const EdgeInsets.all(FSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            /// Icon
            FCircularImage(
              image: FImages.clothIcon,
              overlayColor: Theme.of(context).brightness == Brightness.dark
                  ? FColors.light
                  : FColors.dark,
              isNetworkImage: false,
              backgroundColor: Colors.transparent,
            ),
            const Gap(FSizes.spaceBetweenItems / 2),

            /// -- Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
