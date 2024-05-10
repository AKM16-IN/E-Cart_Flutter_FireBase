import 'package:ecart/common/widgets/Text/brand_title_verification.dart';
import 'package:ecart/common/widgets/Text/productTitle.dart';
import 'package:ecart/common/widgets/images/roundedImages.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class cartItems extends StatelessWidget {
  const cartItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        roundedImage(
          imageurl: IImageString.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(SSizes.s),
          backgroundColor: Helpers.isDarkMode(context)
              ? CColors.darkergrey
              : CColors.light,
        ),

        SizedBox(width: SSizes.m,),

        ///title price and size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              brandTitlewithverification(title: 'Nike'),
              Flexible(child: productTitle(title: 'Black Sports Shoes', maxLines: 1,),),
              Text.rich(TextSpan(
                children: [
                  TextSpan(text: 'color:', style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: 'green', style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(text: ' size:', style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: 'UK 08', style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),),
            ],
          ),
        ),
      ],
    );
  }
}