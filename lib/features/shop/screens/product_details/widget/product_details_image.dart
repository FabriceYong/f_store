import 'package:f_store/common/icons/circular_icon.dart';
import 'package:f_store/common/widgets/appbar/appbar.dart';
import 'package:f_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:f_store/common/widgets/images/rounded_image.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FProductImageSlider extends StatelessWidget {
  const FProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FCustomCurvedEdgesWidget(
      child: Container(
        color: Theme.of(context).brightness == Brightness.dark
            ? FColors.darkGrey
            : FColors.light,
        child: Stack(
          children: [
            /// Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(FSizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(FImages.productImage2),
                  ),
                ),
              ),
            ),

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: FSizes.defaultSpace,
              child: SizedBox(
                height: 70,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (_, __) => const SizedBox(
                    width: FSizes.spaceBetweenItems,
                  ),
                  itemBuilder: (_, index) => FRoundedImage(
                    fit: BoxFit.contain,
                    imageUrl: FImages.productImage2,
                    width: 80,
                    backgroundColor:
                        Theme.of(context).brightness == Brightness.dark
                            ? FColors.dark
                            : FColors.white,
                    border: Border.all(color: FColors.primary),
                    padding: const EdgeInsets.all(FSizes.sm),
                  ),
                ),
              ),
            ),
            const FAppBar(
              showBackArrow: true,
              actions: [
                FCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
