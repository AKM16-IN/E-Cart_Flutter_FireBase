import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class circularImage extends StatelessWidget {
  const circularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width=56,
    this.height=56,
    this.padding = SSizes.s,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor  ?? (Helpers.isDarkMode(context) ? CColors.black : CColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image: isNetworkImage? NetworkImage(image):AssetImage(image) as ImageProvider,
        color: overlayColor,
      ),
    );
  }
}