import 'package:f_store/common/widgets/layouts/grid_layout.dart';
import 'package:f_store/common/widgets/products/cart/product_cart/product_cart_vertical.dart';
import 'package:flutter/material.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FGridLayout(
          itemCount: 4,
          itemBuilder: (context, index) => const FProductCartVertical(),
        ),
      ),
    );
  }
}
