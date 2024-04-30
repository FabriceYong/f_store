import 'package:f_store/common/widgets/appbar/appbar.dart';
import 'package:f_store/common/widgets/brands/brand_card.dart';
import 'package:f_store/common/widgets/products/sortable/sortable_products.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: FAppBar(
        title: Text('Nike'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            children: [
              /// Brand Detail
              FBrandCard(showBorder: true),
              Gap(FSizes.spaceBetweenSections),

              FSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
