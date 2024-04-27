import 'package:f_store/common/widgets/appbar/appbar.dart';
import 'package:f_store/common/widgets/products/ratings/rating_bar_indicator.dart';
import 'package:f_store/features/shop/screens/product_reviews/widgets/progress_indicator_and_ratings.dart';
import 'package:f_store/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FProductReviews extends StatelessWidget {
  const FProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- AppBar
      appBar: const FAppBar(
          title: Text(
            'Reviews & Ratings',
          ),
          showBackArrow: true),

      /// --Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings and reviews are verified and are from people who use the same type of device that you use'),
              const Gap(FSizes.spaceBetweenItems),

              /// Overall Product Ratings
              const FOverallProductRating(),
              const Gap(FSizes.spaceBetweenItems / 2),
              const FRatingBarIndicator(
                rating: 4.5,
              ),
              Text(
                '12,221',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const Gap(FSizes.spaceBetweenSections),

              /// -- Review
              const UserReviewCard(
                image: FImages.userProfileImage1,
                name: 'Mathilde Bond',
                rating: 4.8,
                review:
                    'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly, Great job!',
              ),
              const UserReviewCard(
                image: FImages.userProfileImage3,
                name: 'James Cleverly',
                rating: 4,
                review:
                    'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly, Great job!',
              ),
              const UserReviewCard(
                image: FImages.userProfileImage2,
                name: 'Trevor Miller',
                rating: 3.5,
                review:
                    'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly, Great job!',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
