import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/device/device_utility.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    this.icon,
    required this.text,
    this.showBackground = true,
    this.showBorder = true,
    this.ontap,
    this.padding = const EdgeInsets.symmetric(horizontal: SSizes.dspace),
  });

  final IconData? icon;
  final String text;
  final bool showBackground, showBorder;
  final void Function()? ontap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = Helpers.isDarkMode(context);

    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: padding,
        child: Container(
          width: DeviceUtils.getScreenWidth(),
          padding: EdgeInsets.all(SSizes.m),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? CColors.dark
                    : CColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(SSizes.CardRadiusL),
            border: showBorder ? Border.all(color: CColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: CColors.darkergrey,
              ),
              SizedBox(
                width: SSizes.btwitem,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
