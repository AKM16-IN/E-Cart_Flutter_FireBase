import 'package:ecart/common/widgets/Text/brand_title_content.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/enums.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class brandTitlewithverification extends StatelessWidget {
  const brandTitlewithverification({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.iconColor = CColors.primary,
    this.textColor,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = textsizes.small,
  });

  final String title;
  final int maxLines;
  final Color? iconColor, textColor;
  final TextAlign? textAlign;
  final textsizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: brandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSizes: brandTextSizes,
          ),
        ),

        SizedBox(
          width: SSizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: CColors.primary,
          size: SSizes.iconxs,
        )
      ],
    );
  }
}
