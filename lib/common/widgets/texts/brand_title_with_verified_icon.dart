import 'package:f_store/common/widgets/texts/brand_title_text.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/enums.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class FBrandTitleWithVerifiedIcon extends StatelessWidget {
  const FBrandTitleWithVerifiedIcon({
    super.key, this.textColor, this.maxLines = 1, required this.title, this.iconColor = FColors.primary, this.textAlign = TextAlign.center, this.brandTextSize = TextSizes.small
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: FBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            brandTextSize: brandTextSize,
          ),
        ),
        const Gap(
          FSizes.xs,
        ),
        const Icon(
          Iconsax.verify5,
          color: FColors.primary,
          size: FSizes.iconXs,
        )
      ],
    );
  }
}
