import 'package:ecart/common/widgets/Text/section_heading.dart';
import 'package:ecart/common/widgets/appBar/appbar.dart';
import 'package:ecart/common/widgets/brands/brand_card.dart';
import 'package:ecart/common/widgets/layout/grid_layout.dart';
import 'package:ecart/features/shop/screens/allProducts/all_products.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class allBrands extends StatelessWidget {
  const allBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        title: Text('Brands'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.dspace),
          child: Column(
            children: [
              ///heading
              SectionHeading(title: 'Brands'),
              SizedBox(
                height: SSizes.btwitem,
              ),

              ///brands
              gridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => brandCard(
                  showBorder: true,
                  onTap: () => Get.to(
                    () => sortableProducts(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
