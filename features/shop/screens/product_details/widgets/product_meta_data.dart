import 'package:ecart/common/widgets/Text/brand_title_verification.dart';
import 'package:ecart/common/widgets/Text/productTitle.dart';
import 'package:ecart/common/widgets/custom%20Shapes/containers/rounded_container.dart';
import 'package:ecart/common/widgets/images/circularImage.dart';
import 'package:ecart/common/widgets/products/cart/product_price.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/enums.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class productMetaData extends StatelessWidget {
  const productMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Helpers.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///price nd sale price
        Row(
          children: [
            roundedContainer(
              radius: SSizes.s,
              backgroundColor: CColors.secondary.withOpacity(0.8),
              padding: EdgeInsets.symmetric(horizontal: SSizes.s, vertical: SSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: CColors.black),),
            ),
            SizedBox(width: SSizes.s,),
            Text('₹800', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            SizedBox(width: SSizes.s,),
            productPrice(price: '600',isLarge: true,),
          ],
        ),

        ///title
        SizedBox(height: SSizes.m,),
        productTitle(title: 'Green Nike Sports T-Shirt'),

        ///stock status
        SizedBox(height: SSizes.m,),
        Row(
          children: [
            productTitle(title: 'Status'),
            SizedBox(width: SSizes.s,),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),

        ///brand
        Row(
          children: [
            circularImage(image: IImageString.darkApplogo,width: 30,height: 30, overlayColor: dark? CColors.white : CColors.black ,),
            brandTitlewithverification(title: 'Nike', brandTextSizes: textsizes.medium,),
          ],
        ),
      ],
    );
  }
}
