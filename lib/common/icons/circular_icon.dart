import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FCircularIcon extends StatelessWidget {
  const FCircularIcon(
      {super.key,
      required this.icon,
      this.width,
      this.height,
      this.size = FSizes.lg,
      this.onPressed,
      this.color,
      this.backgroundColor});

  final double? width, height, size;
  final IconData icon;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : Theme.of(context).brightness == Brightness.dark
                ? FColors.black.withOpacity(0.9)
                : FColors.white.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
