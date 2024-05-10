import 'package:ecart/common/widgets/Text/section_heading.dart';
import 'package:ecart/common/widgets/icon/brandShowcase.dart';
import 'package:ecart/common/widgets/layout/grid_layout.dart';
import 'package:ecart/common/widgets/products/productCard/vertical_product_card.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class categoryTab extends StatelessWidget {
  const categoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children:[ Padding(
        padding: EdgeInsets.all(SSizes.dspace),
        child: Column(
          children: [
            ///brands
            brandShowCase(images: [IImageString.productImage4, IImageString.productImage5, IImageString.productImage6],),

            ///products
            SectionHeading(title: 'You might like', onPressed: (){},showActionButton: true,),
            SizedBox(height: SSizes.m,),

            gridLayout(itemCount: 4, itemBuilder: (_, index) => productCardVertical(),),
          ],
        ),
      ),
    ],
    );
  }
}
