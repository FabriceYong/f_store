import 'package:f_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class FSingleAddress extends StatelessWidget {
  const FSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    return FRoundedContainer(
      padding: const EdgeInsets.all(FSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? FColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : Theme.of(context).brightness == Brightness.dark
              ? FColors.darkerGrey
              : FColors.grey,
      margin: const EdgeInsets.only(bottom: FSizes.spaceBetweenItems),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 5,
            child: Icon(selectedAddress ? Iconsax.tick_circle5 : null,
                color: selectedAddress
                    ? Theme.of(context).brightness == Brightness.dark
                        ? FColors.light.withOpacity(.6)
                        : FColors.dark.withOpacity(.6)
                    : null),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mathilde Bond',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Gap(FSizes.sm / 2),
              const Text(
                '98549 Timmy Coves, South Liana, Maine, 45549, USA',
                softWrap: true,
              ),
              const Gap(FSizes.sm / 2),
              const Text(
                '(+123) 456 7890',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const Gap(FSizes.sm / 2),
            ],
          )
        ],
      ),
    );
  }
}
