import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class roundedImage extends StatelessWidget {
  const roundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageurl,
    this.applyImageRadius = false,
    this.border,
    this.backgroundColor = CColors.light,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = SSizes.m,
  });

  final double? width, height;
  final double borderRadius;
  final String imageurl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool? isNetworkImage;
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
          borderRadius: BorderRadius.circular(borderRadius),
          border: border,
          color: backgroundColor,
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkImage!
                ? NetworkImage(imageurl)
                : AssetImage(imageurl) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}