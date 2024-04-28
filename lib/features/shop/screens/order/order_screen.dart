import 'package:f_store/common/widgets/appbar/appbar.dart';
import 'package:f_store/features/shop/screens/order/widgets/order_list_items.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar
      appBar: FAppBar(
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(FSizes.defaultSpace),
        child: FOrderListItems(),
      ),
    );
  }
}
