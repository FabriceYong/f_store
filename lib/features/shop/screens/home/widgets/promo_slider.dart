import 'package:carousel_slider/carousel_slider.dart';
import 'package:f_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:f_store/common/widgets/images/rounded_image.dart';
import 'package:f_store/features/shop/controllers/home_controller.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class FHomePromoCarouselSlider extends StatelessWidget {
  const FHomePromoCarouselSlider({
    super.key,
    required this.banners
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, _) =>
                    controller.updatePageIndicator(index)),
            items: banners
                .map((url) => FRoundedImage(
                      applyImageRadius: true,
                      imageUrl: url,
                    ))
                .toList()),
        const SizedBox(
          height: FSizes.spaceBetweenItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < 3; i++)
                  FCircularContainer(
                    margin: const EdgeInsets.only(right: 10),
                    width: 20,
                    height: 4,
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? FColors.primary
                        : FColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
