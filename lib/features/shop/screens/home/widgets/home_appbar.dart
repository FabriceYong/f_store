import 'package:f_store/common/products/cart/cart_counter_icon.dart';
import 'package:f_store/common/widgets/appbar/appbar.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class FHomeAppBar extends StatelessWidget {
  const FHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            FTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: FColors.grey),
          ),
          Text(
            FTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .apply(color: FColors.white),
          )
        ],
      ),
      actions: [
        FCartCounterIcon(
          onPressed: () {},
          iconColor: FColors.white,
        )
      ],
    );
  }
}
