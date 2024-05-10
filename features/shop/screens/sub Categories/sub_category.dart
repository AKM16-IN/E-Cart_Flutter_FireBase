import 'package:ecart/common/widgets/Text/section_heading.dart';
import 'package:ecart/common/widgets/appBar/appbar.dart';
import 'package:ecart/common/widgets/images/roundedImages.dart';
import 'package:ecart/common/widgets/products/productCard/horizontal_product_card.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class subCategory extends StatelessWidget {
  const subCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        title: Text(
          'Sports shirts',
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.dspace),
          child: Column(
            children: [
              ///banner
              roundedImage(
                imageurl: IImageString.banner4,
                width: double.infinity,
                applyImageRadius: true,
              ),
              SizedBox(
                height: SSizes.btwitem,
              ),

              ///sub-categories
              Column(
                children: [
                  ///heading
                  SectionHeading(
                    title: 'Sports shirts',
                    onPressed: () {},
                    showActionButton: true,
                  ),
                  SizedBox(
                    height: SSizes.btwsection / 2,
                  ),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemBuilder: (context, index) => horizontalProductCard(),
                      separatorBuilder: (context,index)=> SizedBox(width: SSizes.m,),
                      shrinkWrap: true,
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
