import 'package:f_store/common/widgets/appbar/appbar.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class FAddNewAddress extends StatelessWidget {
  const FAddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    final floatingLabelStyle = Theme.of(context).brightness == Brightness.dark
        ? FColors.light
        : FColors.dark;

    return Scaffold(
      appBar: const FAppBar(
        showBackArrow: true,
        title: Text('Add new Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(FSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Iconsax.user,
                    ),
                    labelText: 'Name',
                    floatingLabelStyle: TextStyle(color: floatingLabelStyle),
                  ),
                ),
                const Gap(FSizes.spaceBetweenInputFields),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Iconsax.mobile,
                    ),
                    labelText: 'Phone Number',
                    floatingLabelStyle: TextStyle(color: floatingLabelStyle),
                  ),
                ),
                const Gap(FSizes.spaceBetweenInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Iconsax.building_31),
                          labelText: 'Street',
                          floatingLabelStyle:
                              TextStyle(color: floatingLabelStyle),
                        ),
                      ),
                    ),
                    const Gap(FSizes.spaceBetweenInputFields),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Iconsax.code),
                          labelText: 'Postal Code',
                          floatingLabelStyle:
                              TextStyle(color: floatingLabelStyle),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(FSizes.spaceBetweenInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Iconsax.building),
                          labelText: 'City',
                          floatingLabelStyle:
                              TextStyle(color: floatingLabelStyle),
                        ),
                      ),
                    ),
                    const Gap(FSizes.spaceBetweenInputFields),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Iconsax.activity),
                          labelText: 'State',
                          floatingLabelStyle:
                              TextStyle(color: floatingLabelStyle),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(FSizes.spaceBetweenInputFields),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Iconsax.global,
                    ),
                    labelText: 'Country',
                    floatingLabelStyle: TextStyle(color: floatingLabelStyle),
                  ),
                ),
                const Gap(FSizes.defaultSpace),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Save'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
