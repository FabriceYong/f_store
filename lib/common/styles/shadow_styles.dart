import 'package:f_store/utils/constants/colors.dart';
import 'package:flutter/widgets.dart';

class FShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: FColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
      color: FColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: Offset(0, 2));
}
