import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class FRatingsAndShare extends StatelessWidget {
  const FRatingsAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Iconsax.star5,
              color: Colors.amber,
              size: 24,
            ),
            const Gap(FSizes.spaceBetweenItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '5.0',
                      style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.share,
            size: FSizes.iconMd,
          ),
        )
      ],
    );
  }
}
