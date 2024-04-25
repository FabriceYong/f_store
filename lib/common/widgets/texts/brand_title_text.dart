import 'package:f_store/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class FBrandTitleText extends StatelessWidget {
  const FBrandTitleText(
      {super.key,
      required this.title,
      this.color,
      this.maxLines = 1,
      this.brandTextSize = TextSizes.small,
      this.textAlign = TextAlign.center});

  final String title;
  final Color? color;
  final int? maxLines;
  final TextSizes brandTextSize;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: brandTextSize == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSize == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : brandTextSize == TextSizes.large
                  ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
