import 'package:ecart/common/widgets/icon/circular_Icon.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class productQuantity_ADD_Remove extends StatelessWidget {
  const productQuantity_ADD_Remove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        circularIcon(
          icon: Iconsax.minus4,
          size: 15,
          width: 30,
          height: 30,
          color: Helpers.isDarkMode(context)
              ? CColors.black
              : CColors.white,
          backGroundColor: Helpers.isDarkMode(context)
              ? CColors.white
              : CColors.black,
        ),
        SizedBox(width: SSizes.s,),
        Text('2', style: Theme.of(context).textTheme.titleSmall,),
        SizedBox(width: SSizes.s,),
        circularIcon(
          icon: Iconsax.add,
          size: 14,
          width: 30,
          height: 30,
          color: Helpers.isDarkMode(context)
              ? CColors.black
              : CColors.white,
          backGroundColor: CColors.primary,
        ),
      ],
    );
  }
}