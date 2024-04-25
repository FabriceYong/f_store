import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FRoundedImage extends StatelessWidget {
  const FRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = false,
    this.border,
    this.backgroundColor,
    this.fit = BoxFit.cover,
    this.padding,
    this.onPressed,
    this.isNetWorkImage = false,
    this.borderRadius = FSizes.md,
  });

  final double? width, height, borderRadius;
  final String imageUrl;
  final bool applyImageRadius, isNetWorkImage;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius!),
            border: border,
            color: backgroundColor),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius!)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetWorkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
          ),
        ),
      ),
    );
  }
}
