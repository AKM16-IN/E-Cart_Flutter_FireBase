import 'package:ecart/common/widgets/Text/section_heading.dart';
import 'package:ecart/features/shop/screens/product_details/widgets/bottom_add_to.dart';
import 'package:ecart/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:ecart/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecart/features/shop/screens/product_details/widgets/prouct_attribute.dart';
import 'package:ecart/features/shop/screens/product_details/widgets/rating_share.dart';
import 'package:ecart/features/shop/screens/product_review/product_review.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class productDetails extends StatelessWidget {
  const productDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Helpers.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: bottomAddToCart(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            ///prdouct Image slider
            productImageSlider(),

            ///product details
            Padding(
              padding: EdgeInsets.only(
                right: SSizes.dspace,
                left: SSizes.dspace,
                bottom: SSizes.dspace,
              ),
              child: Column(
                children: [
                  ///rating & Share button
                  ratingndShare(),

                  ///price title stock nd brand
                  productMetaData(),

                  ///attributes
                  productAtttribute(),

                  SizedBox(
                    height: SSizes.btwitem,
                  ),

                  ///checkout buttons
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Checkout'),
                    ),
                  ),

                  ///description
                  SizedBox(
                    height: SSizes.m,
                  ),
                  SectionHeading(title: 'Description'),
                  SizedBox(
                    height: SSizes.m,
                  ),
                  ReadMoreText(
                    'fewbebfbefefwbfebfewbf fbsbfbewybfwfbwebfuwbfwe fwefbewufuebfwefewvfueveuvfuvfsvfsvdgfffjhvhjvdtevhd uivgfsshcsc',
                    trimLength: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  ///reviews
                  Divider(),
                  SizedBox(height: SSizes.m,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionHeading(title: 'Reviews'),
                      IconButton(onPressed: ()=>Get.to(()=>productReview()), icon: Icon(Iconsax.arrow_right_3, size: 15,),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
