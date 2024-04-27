import 'package:f_store/common/widgets/appbar/appbar.dart';
import 'package:f_store/features/personalization/screens/address/widgets/add_new_address.dart';
import 'package:f_store/features/personalization/screens/address/widgets/single_address.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FUserAddressScreen extends StatelessWidget {
  const FUserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const FAddNewAddress());
        },
        backgroundColor: FColors.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: const Icon(
          Iconsax.add,
          color: FColors.white,
        ),
      ),
      appBar: FAppBar(
        showBackArrow: true,
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            children: [
              FSingleAddress(selectedAddress: true),
              FSingleAddress(selectedAddress: false),
              FSingleAddress(selectedAddress: false),
              FSingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
