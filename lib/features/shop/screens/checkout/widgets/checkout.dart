import 'package:f_store/common/widgets/appbar/appbar.dart';
import 'package:f_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:f_store/common/widgets/products/cart/product_cart/coupon_widget.dart';
import 'package:f_store/common/widgets/success_screen/success_screen.dart';
import 'package:f_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:f_store/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:f_store/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:f_store/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:f_store/features/shop/screens/home/home.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            children: [
              const FCartItems(
                showAddRemoveButtons: false,
              ),
              const Gap(FSizes.spaceBetweenSections),

              /// coupon code
              const FCouponCode(),
              const Gap(FSizes.spaceBetweenSections),

              /// -- Billing Section
              FRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(FSizes.md),
                backgroundColor: Theme.of(context).brightness == Brightness.dark
                    ? FColors.black
                    : FColors.white,
                child: Column(
                  children: [
                    /// Pricing
                    const FBillingAmountSection(),
                    const Gap(FSizes.spaceBetweenItems),

                    /// Divider
                    Divider(
                      thickness: 2,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? FColors.darkerGrey.withOpacity(.3)
                          : FColors.lightGrey.withOpacity(.8),
                    ),

                    /// Payment Methods

                    const FBillingPaymentSection(),
                    const Gap(FSizes.spaceBetweenItems),

                    /// Address
                    const FBillingAddressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.zero,
                bottomRight: Radius.zero,
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15)),
          ),
        ),
        onPressed: () {
          Get.to(
            () => SuccessScreen(
              image: FImages.successfulPaymentIcon,
              title: 'Payment Successful',
              subTitle:
                  'Your order is being processed and will be shipped to you soon',
              onPressed: () {
                Get.to(() => const HomeScreen());
              },
            ),
          );
        },
        child: const Text('Checkout \$256.0'),
      ),
    );
  }
}
