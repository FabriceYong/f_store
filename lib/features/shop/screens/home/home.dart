import 'package:f_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:f_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:f_store/common/widgets/layouts/grid_layout.dart';
import 'package:f_store/common/widgets/products/cart/product_cart/product_cart_vertical.dart';
import 'package:f_store/common/widgets/texts/section_heading.dart';
import 'package:f_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:f_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:f_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const FPrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// AppBar
                  FHomeAppBar(),
                  SizedBox(
                    height: FSizes.spaceBetweenSections,
                  ),

                  /// -- Search Bar
                  FSearchContainer(
                    text: 'Search in cart',
                    icon: Iconsax.search_normal,
                  ),
                  SizedBox(
                    height: FSizes.spaceBetweenItems,
                  ),

                  ///Categories
                  Padding(
                    padding: EdgeInsets.only(left: FSizes.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FSectionHeading(
                          showActionButton: false,
                          title: 'Popular Categories',
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: FSizes.spaceBetweenItems,
                        ),

                        /// Categories
                        FHomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(FSizes.defaultSpace),
              child: Column(
                children: [
                  const FHomePromoCarouselSlider(
                    banners: [
                      FImages.promoBanner1,
                      FImages.promoBanner2,
                      FImages.promoBanner3
                    ],
                  ),
                  const Gap(
                    FSizes.spaceBetweenItems,
                  ),

                  /// Products cart header
                  FSectionHeading(
                    title: 'Popular Products',
                    onPressed: () {},
                  ),
                  const Gap(FSizes.spaceBetweenItems),

                  /// Vertical product cart
                  FGridLayout(
                    itemCount: 4,
                    itemBuilder: (context, index) =>
                        const FProductCartVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
