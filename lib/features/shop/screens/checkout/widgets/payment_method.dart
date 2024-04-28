import 'package:f_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FPaymentMethod extends StatelessWidget {
  const FPaymentMethod({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FRoundedContainer(
          width: 40,
          height: 40,
          backgroundColor: Theme.of(context).brightness == Brightness.dark
              ? FColors.lightGrey
              : FColors.light,
          padding: const EdgeInsets.all(FSizes.sm),
          child: Image(image: AssetImage(image), fit: BoxFit.contain),
        ),
        const Gap(FSizes.spaceBetweenItems / 2),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
