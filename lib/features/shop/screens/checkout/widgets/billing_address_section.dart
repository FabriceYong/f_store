import 'package:f_store/common/widgets/texts/section_heading.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FBillingAddressSection extends StatelessWidget {
  const FBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text(
          'Coding with Fabrice',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Gap(FSizes.spaceBetweenItems),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            const Gap(FSizes.spaceBetweenItems),
            Text(
              '(123) 456 7890',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const Gap(FSizes.spaceBetweenItems),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            const Gap(FSizes.spaceBetweenItems),
            Expanded(
              child: Text(
                'South Lian, Main, 87695, USA',
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            ),
          ],
        )
      ],
    );
  }
}
