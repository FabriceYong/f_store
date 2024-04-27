import 'package:f_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:f_store/common/widgets/products/ratings/rating_bar_indicator.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard(
      {super.key,
      this.image,
      required this.name,
      required this.rating,
      required this.review});

  final String? image;
  final String name;
  final double rating;
  final String review;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: image == null
                      ? const AssetImage(FImages.user_avatar)
                      : AssetImage(image!),
                ),
                const Gap(FSizes.spaceBetweenItems),
                Text(
                  name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_outlined),
            ),
          ],
        ),

        /// Review
        Row(
          children: [
            FRatingBarIndicator(
              rating: rating,
              itemSize: 20,
            ),
            const Gap(FSizes.spaceBetweenItems),
            Text(
              '01 Dec, 2023',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const Gap(FSizes.spaceBetweenItems),
        ReadMoreText(
          review,
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'read more',
          moreStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: FColors.primary),
          lessStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: FColors.primary),
        ),
        const Gap(FSizes.spaceBetweenItems),

        /// Company Review
        FRoundedContainer(
          backgroundColor: Theme.of(context).brightness == Brightness.dark
              ? FColors.darkerGrey
              : FColors.lightGrey,
          child: Padding(
            padding: const EdgeInsets.all(FSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'F\'s Store',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '01 Dec, 2023',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const Gap(FSizes.spaceBetweenItems),
                const ReadMoreText(
                  'The user interface of the app is wuite intuitive, I was able to navigate and make purchases seamlessly, Great job!',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'read more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: FColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: FColors.primary),
                ),
              ],
            ),
          ),
        ),
        const Gap(FSizes.spaceBetweenSections),
      ],
    );
  }
}
