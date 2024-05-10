import 'package:ecart/common/widgets/icon/circular_Icon.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class bottomAddToCart extends StatelessWidget {
  const bottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Helpers.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: SSizes.xs, horizontal: SSizes.xs),
      decoration: BoxDecoration(
        color: dark ? CColors.darkgrey : CColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(SSizes.CardRadiusL),
          topRight: Radius.circular(SSizes.CardRadiusL),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(SSizes.dspace/2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                circularIcon(icon: Iconsax.minus_cirlce5,backGroundColor: CColors.white,   size: 35, color: CColors.darkgrey,),
                SizedBox(width: SSizes.xs,),
                Text('2', style: Theme.of(context).textTheme.titleMedium,),
                SizedBox(width: SSizes.xs,),
                circularIcon(icon: Iconsax.add_circle5,backGroundColor: CColors.white, size: 35, color: CColors.black,),
              ],
            ),
            ElevatedButton(onPressed: (){}, child: Text('Add to cart'), style: ElevatedButton.styleFrom(padding: EdgeInsets.all(SSizes.m),backgroundColor: CColors.black,side: BorderSide(color: CColors.black,),),)
          ],
        ),
      ),
    );
  }
}
