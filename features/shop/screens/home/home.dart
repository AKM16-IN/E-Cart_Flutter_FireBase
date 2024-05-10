import 'package:ecart/common/widgets/Text/section_heading.dart';
import 'package:ecart/common/widgets/custom%20Shapes/containers/Search_Container.dart';
import 'package:ecart/common/widgets/custom%20Shapes/containers/primary_header.dart';
import 'package:ecart/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:ecart/common/widgets/layout/grid_layout.dart';
import 'package:ecart/common/widgets/products/productCard/vertical_product_card.dart';
import 'package:ecart/features/shop/screens/home/home_Appbar.dart';
import 'package:ecart/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecart/features/shop/screens/sub%20Categories/sub_category.dart';
import 'package:ecart/features/shop/screens/view%20all%20products/all+products.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Home App Bar
                  HomeAppBar(),
                  SizedBox(
                    height: SSizes.btwsection,
                  ),

                  ///Search Bar
                  SearchContainer(
                    text: 'Search in Store',
                    icon: Iconsax.search_normal,
                  ),
                  SizedBox(
                    height: SSizes.btwsection,
                  ),

                  ///Categories
                  Padding(
                    padding: EdgeInsets.only(left: SSizes.dspace),
                    child: Column(
                      children: [
                        ///Headings
                        SectionHeading(
                          title: 'Categories',
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: SSizes.m,
                        ),

                        ///Categories
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 7,
                              itemBuilder: (_, index) {
                                return Vertical_image_text(
                                  image: IImageString.shoes,
                                  title: "Shoes",
                                  onTap: () => Get.to(()=>subCategory()),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: SSizes.btwitem,),
                ],
              ),
            ),

            ///Body
            Padding(
              padding: EdgeInsets.all(SSizes.dspace),
              child: Column(
                children: [
                  PromoSlider(
                    banners: [
                      IImageString.promo1,
                      IImageString.promo2,
                      IImageString.promo3
                    ],
                  ),
                  SizedBox(
                    height: SSizes.m,
                  ),
                  SectionHeading(title: 'Popular Categories' , onPressed: ()=>Get.to(()=>viewAllProducts()), showActionButton: true,),
                  gridLayout(itemCount: 4, itemBuilder: (_ , index ) =>productCardVertical(),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


