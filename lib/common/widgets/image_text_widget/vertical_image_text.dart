import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:f_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class FVerticalImageText extends StatelessWidget {
  const FVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = FColors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: FSizes.spaceBetweenItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(FSizes.defaultSpace / 3),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (FHelperFunctions.isDarkMode(context)
                        ? FColors.black
                        : FColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                  color: Theme.of(context).brightness == Brightness.dark
                      ? FColors.light
                      : FColors.dark,
                ),
              ),
            ),
            const SizedBox(
              height: FSizes.spaceBetweenItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
