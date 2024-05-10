import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';

class roundedContainer extends StatelessWidget {
  const roundedContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.radius = SSizes.CardRadiusL,
    this.padding,
    this.margin,
    this.showBorder = false,
    this.borderColor = CColors.primary,
    this.backgroundColor = CColors.white,
  });

  final Widget? child;
  final double? width;
  final double? height;
  final double radius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
