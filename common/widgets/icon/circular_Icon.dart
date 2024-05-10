import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class circularIcon extends StatelessWidget {
  const circularIcon({
    super.key,
    this.width, // container
    this.height, // container
    this.size, // icon
    required this.icon,
    this.color, // icon
    this.backGroundColor, // conatiner
    this.onPressed, //icon
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backGroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backGroundColor != null
            ? backGroundColor!
            : Helpers.isDarkMode(context)
                ? CColors.black.withOpacity(0.9)
                : CColors.white.withOpacity(0.9),
      ),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            size: size,
            color: color,
          ),),
    );
  }
}
