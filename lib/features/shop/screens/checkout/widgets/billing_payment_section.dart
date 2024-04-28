import 'package:f_store/common/widgets/texts/section_heading.dart';
import 'package:f_store/features/shop/screens/checkout/widgets/payment_method.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FBillingPaymentSection extends StatelessWidget {
  const FBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const Row(
          children: [
            Gap(FSizes.spaceBetweenItems),
            FPaymentMethod(image: FImages.paypal, title: 'Paypal'),
            Gap(FSizes.spaceBetweenItems),
          ],
        )
      ],
    );
  }
}


            // Gap(FSizes.spaceBetweenItems),
            // FPaymentMethod(image: FImages.applePay, title: 'Apple Pay'),
            // Gap(FSizes.spaceBetweenItems),
            // FPaymentMethod(image: FImages.creditCard, title: 'Credit card'),
            // Gap(FSizes.spaceBetweenItems),
            // FPaymentMethod(image: FImages.masterCard, title: 'Master Card'),
            // Gap(FSizes.spaceBetweenItems),
            // FPaymentMethod(image: FImages.google, title: 'Google Pay'),
            // Gap(FSizes.spaceBetweenItems),
            // FPaymentMethod(image: FImages.paytm, title: 'Pay TM'),
            // Gap(FSizes.spaceBetweenItems),
            // FPaymentMethod(image: FImages.paystack, title: 'Paystack'),