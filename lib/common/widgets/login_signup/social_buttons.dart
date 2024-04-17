import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FSocialButtons extends StatelessWidget {
  const FSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: FColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: const Image(
              image: AssetImage(FImages.google),
              width: FSizes.iconMd,
              height: FSizes.iconMd,
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          width: FSizes.spaceBetweenItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: FColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: const Image(
              image: AssetImage(FImages.facebook),
              width: FSizes.iconMd,
              height: FSizes.iconMd,
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          width: FSizes.spaceBetweenItems,
        ),
      ],
    );
  }
}
