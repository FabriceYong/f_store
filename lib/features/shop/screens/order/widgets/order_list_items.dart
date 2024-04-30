import 'package:f_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class FOrderListItems extends StatelessWidget {
  const FOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 6,
      separatorBuilder: (_, __) => const Gap(FSizes.spaceBetweenItems),
      itemBuilder: (_, __) => FRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(FSizes.spaceBetweenItems / 2),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? FColors.black
            : FColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Row 1
            Row(
              children: [
                /// Icon
                const Icon(Iconsax.ship),
                const Gap(FSizes.spaceBetweenItems / 2),

                /// Status and Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: FColors.primary, fontWeightDelta: 1),
                      ),
                      Text(
                        '07 Dec, 2024',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),

                /// Icon
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Iconsax.arrow_right_34),
                ),
              ],
            ),
            const Gap(FSizes.spaceBetweenItems),

            /// Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Icon
                      const Icon(Iconsax.ship),
                      const Gap(FSizes.spaceBetweenItems / 2),

                      /// Status and Date
                      Expanded(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Order',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Text(
                                '#165465',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Icon
                      const Icon(Iconsax.calendar_edit),
                      const Gap(FSizes.spaceBetweenItems / 2),

                      /// Status and Date
                      Expanded(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Shipping Date',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Text(
                                '03 Dec, 2024',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
