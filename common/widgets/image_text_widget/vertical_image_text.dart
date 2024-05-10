import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class Vertical_image_text extends StatelessWidget {
  const Vertical_image_text({
    super.key,
    required this.image,
    required this.title,
    this.backgroundColor ,
    this.textColor = CColors.white,
    this.onTap,
  });

  final String image, title;
  final Color? backgroundColor;
  final Color? textColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: SSizes.m),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(SSizes.s),
              decoration: BoxDecoration(
                  color: backgroundColor ?? (Helpers.isDarkMode(context) ? CColors.black:CColors.white),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
                width: 55,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor ?? (Helpers.isDarkMode(context) ? CColors.light:CColors.dark),),
                ))
          ],
        ),
      ),
    );
  }
}