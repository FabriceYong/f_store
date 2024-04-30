import 'package:f_store/common/widgets/appbar/appbar.dart';
import 'package:f_store/common/widgets/products/sortable/sortable_products.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: FAppBar(
        title: Text('All Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(FSizes.defaultSpace),
          child: FSortableProducts(),
        ),
      ),
    );
  }
}
