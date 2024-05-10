import 'package:ecart/common/styles/shadow.dart';
import 'package:ecart/common/widgets/Text/brand_title_content.dart';
import 'package:ecart/common/widgets/Text/brand_title_verification.dart';
import 'package:ecart/common/widgets/Text/productTitle.dart';
import 'package:ecart/common/widgets/custom%20Shapes/containers/rounded_container.dart';
import 'package:ecart/common/widgets/icon/circular_Icon.dart';
import 'package:ecart/common/widgets/images/roundedImages.dart';
import 'package:ecart/common/widgets/products/cart/product_price.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class horizontalProductCard extends StatelessWidget {
  const horizontalProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [shadowStyle.horizontalProductShadow],
        borderRadius: BorderRadius.circular(SSizes.Itemradius),
        color: Helpers.isDarkMode(context) ? CColors.darkergrey : CColors.white,
      ),
      child: Row(
        children: [
          ///thumbnail
          roundedContainer(
            height: 120,
            padding: EdgeInsets.all(SSizes.s),
            backgroundColor:
                Helpers.isDarkMode(context) ? CColors.dark : CColors.light,
            child: Stack(
              children: [
                ///thumbanil image
                SizedBox(
                    height: 120,
                    width: 120,
                    child: roundedImage(
                      imageurl: IImageString.promoBanner1,
                      applyImageRadius: true,
                    )),

                ///saleTag
                Positioned(
                  top: 10,
                  child: roundedContainer(
                    radius: SSizes.s,
                    backgroundColor: CColors.secondary.withOpacity(0.8),
                    padding: EdgeInsets.symmetric(
                        horizontal: SSizes.s, vertical: SSizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: CColors.black),
                    ),
                  ),
                ),

                ///fovourite icon button
                Positioned(
                  top: 0,
                  right: 0,
                  child: circularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),

          ///details
          SizedBox(
            width: 172,
            child: Padding(
              padding: EdgeInsets.only(top: SSizes.s,left: SSizes.s),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      productTitle(title: 'Green Nike half Sleev Shirt', smallSize: true,),
                      SizedBox(height: SSizes.btwsection/2,),
                      brandTitlewithverification(title: 'Nike'),

                    ],
                  ),

                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: productPrice(price: '256')),

                      ///add to cart
                      Container(
                        decoration: BoxDecoration(
                            color: CColors.dark,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(SSizes.CardRadiusM),bottomRight: Radius.circular(SSizes.Itemradius) )
                        ),
                        child: SizedBox(height: SSizes.iconL*1.2,width: SSizes.iconL*1.2,child: Center(child: Icon(Iconsax.add, color: CColors.light,))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
