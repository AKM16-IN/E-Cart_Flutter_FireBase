import 'package:ecart/common/styles/shadow.dart';
import 'package:ecart/common/widgets/Text/brand_title_verification.dart';
import 'package:ecart/common/widgets/Text/productTitle.dart';
import 'package:ecart/common/widgets/custom%20Shapes/containers/rounded_container.dart';
import 'package:ecart/common/widgets/icon/circular_Icon.dart';
import 'package:ecart/common/widgets/images/roundedImages.dart';
import 'package:ecart/common/widgets/products/cart/product_price.dart';
import 'package:ecart/features/shop/screens/product_details/product_details.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class productCardVertical extends StatelessWidget {
  const productCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Get.to(productDetails(),),
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [shadowStyle.vertcialProductShadow],
          borderRadius: BorderRadius.circular(SSizes.Itemradius),
          color: Helpers.isDarkMode(context) ? CColors.darkergrey : CColors.white,
        ),
        child: Column(
          children: [
            roundedContainer(
              height: 180,
              padding: EdgeInsets.all(SSizes.s),
              backgroundColor:
                  Helpers.isDarkMode(context) ? CColors.dark : CColors.light,
              child: Stack(
                children: [
                  ///thumbnail
                  roundedImage(
                    imageurl: IImageString.productImage1,
                    backgroundColor: Helpers.isDarkMode(context) ? CColors.dark : CColors.light,
                    applyImageRadius: true,
                  ),

                  ///saleTag
                  Positioned(
                    top: 5,
                    left: 5,
                    child: roundedContainer(
                      radius: SSizes.s,
                      backgroundColor: CColors.secondary.withOpacity(0.8),
                      padding: EdgeInsets.symmetric(
                          horizontal: SSizes.s, vertical: SSizes.xs),
                      child: productPrice(price: '25%')
                    ),
                  ),

                  ///favourite icon
                  Positioned(
                    top: -2,
                    right: 0,
                    child: circularIcon(
                      icon: Iconsax.heart4,
                      size: 25,
                      backGroundColor: Helpers.isDarkMode(context) ? CColors.dark : CColors.light,
                    ),
                    height: 45,
                    width: 45,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: SSizes.s),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  productTitle(title: 'Nike Green Air', smallSize: true,),
                  SizedBox(height: SSizes.btwitem/4,),
                  brandTitlewithverification(title: 'Nike',),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Rs.5999',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
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
              )
            ),
          ],
        ),
      ),
    );
  }
}


