import 'package:f_store/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class FHomeCategories extends StatelessWidget {
  const FHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return FVerticalImageText(
            image: FImages.shoes,
            title: 'Shoes',
            onTap: () {},
          );
        },
      ),
    );
  }
}
