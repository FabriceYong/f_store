import 'package:f_store/common/widgets/texts/section_heading.dart';
import 'package:f_store/features/shop/screens/checkout/widgets/checkout.dart';
import 'package:f_store/features/shop/screens/product_details/widget/bottom_add_to_cart.dart';
import 'package:f_store/features/shop/screens/product_details/widget/product_attributes.dart';
import 'package:f_store/features/shop/screens/product_details/widget/product_details_image.dart';
import 'package:f_store/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:f_store/features/shop/screens/product_details/widget/ratings_and_share.dart';
import 'package:f_store/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class FProductDetails extends StatelessWidget {
  const FProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const FBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            const FProductImageSlider(),

            /// 2 - Rating & Share Button
            Padding(
              padding: const EdgeInsets.only(
                  right: FSizes.defaultSpace,
                  left: FSizes.defaultSpace,
                  bottom: FSizes.defaultSpace),
              child: Column(
                children: [
                  /// Rating
                  const FRatingsAndShare(),

                  /// Price, Title, Stock, & Brand
                  const FProductMetaData(),

                  /// --Atributes
                  const FProductAttributes(),

                  /// -- Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const Checkout());
                      },
                      child: const Text('Checkout'),
                    ),
                  ),
                  const Gap(FSizes.spaceBetweenItems),

                  /// Description
                  const FSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const Gap(FSizes.spaceBetweenItems),
                  const ReadMoreText(
                    'This is a Product description for White Nike Jordans, there are things that could be added but i just added a few for now',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' read more',
                    trimExpandedText: ' show less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const Gap(FSizes.spaceBetweenItems / 2),

                  /// Reviews
                  Divider(
                    color: FColors.darkGrey.withOpacity(0.2),
                    thickness: 2,
                  ),
                  const Gap(FSizes.spaceBetweenItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const FSectionHeading(
                        title: 'Reviews (199)',
                        showActionButton: false,
                      ),
                      IconButton(
                        onPressed: () {
                          Get.to(const FProductReviews());
                        },
                        icon: const Icon(
                          Iconsax.arrow_right_3,
                          size: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
