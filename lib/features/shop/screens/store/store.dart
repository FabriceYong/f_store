import 'package:f_store/common/products/cart/cart_counter_icon.dart';
import 'package:f_store/common/widgets/appbar/appbar.dart';
import 'package:f_store/common/widgets/appbar/tabbar.dart';
import 'package:f_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:f_store/common/widgets/layouts/grid_layout.dart';
import 'package:f_store/common/widgets/texts/section_heading.dart';
import 'package:f_store/common/widgets/brands/brand_card.dart';
import 'package:f_store/features/shop/screens/store/widgets/category_tab.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: FAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [FCartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: Theme.of(context).brightness == Brightness.dark
                    ? FColors.black
                    : FColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(FSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// Search bar
                      const Gap(FSizes.spaceBetweenItems),
                      const FSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        padding: EdgeInsets.zero,
                        showBackground: false,
                      ),
                      const Gap(FSizes.spaceBetweenSections),

                      /// Featured Brands
                      FSectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                      ),
                      const Gap(FSizes.spaceBetweenItems / 1.5),

                      Flexible(
                        child: FGridLayout(
                          mainAxisExtent: 80,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return FBrandCard(
                              showBorder: true,
                              onTap: () {},
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),

                /// Tabs 000
                bottom: const FTabBar(
                  tabs: [
                    Tab(
                      child: Text('Sports'),
                    ),
                    Tab(
                      child: Text('Furniture'),
                    ),
                    Tab(
                      child: Text('Electronics'),
                    ),
                    Tab(
                      child: Text('Cloths'),
                    ),
                    Tab(
                      child: Text('Cosmetics'),
                    ),
                    Tab(
                      child: Text('Sports'),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              FCategoryTab(),
              FCategoryTab(),
              FCategoryTab(),
              FCategoryTab(),
              FCategoryTab(),
              FCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}


