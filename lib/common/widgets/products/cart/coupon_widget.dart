import 'package:f_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FCouponCode extends StatelessWidget {
  const FCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FRoundedContainer(
      showBorder: true,
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? FColors.dark
          : FColors.white,
      padding: const EdgeInsets.only(
          top: FSizes.sm, bottom: FSizes.md, right: FSizes.sm, left: FSizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Have a promo code? Enter here...',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none),
            ),
          ),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Theme.of(context).brightness == Brightness.dark
                    ? FColors.white.withOpacity(0.5)
                    : FColors.dark.withOpacity(.5),
                backgroundColor: Colors.grey.withOpacity(.2),
                padding: const EdgeInsets.symmetric(vertical: 15),
                side: BorderSide(
                  color: Colors.grey.withOpacity(.1),
                ),
              ),
              child: const Text('Apply'),
            ),
          )
        ],
      ),
    );
  }
}
