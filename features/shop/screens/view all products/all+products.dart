import 'package:ecart/common/widgets/appBar/appbar.dart';
import 'package:ecart/common/widgets/layout/grid_layout.dart';
import 'package:ecart/common/widgets/products/productCard/vertical_product_card.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class viewAllProducts extends StatelessWidget {
  const viewAllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        title: Text('Popular products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.dspace),
          child: Column(
            children: [
              ///dropdown
              DropdownButtonFormField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.sort),
                ),
                items: [
                  'Name',
                  'Higher Price',
                  'Lower Price',
                  'Sale',
                  'Newest',
                  'Popularity'
                ]
                    .map(
                      (option) => DropdownMenuItem(
                        child: Text(option),
                        value: option,
                      ),
                    )
                    .toList(),
              ),
              SizedBox(
                height: SSizes.btwitem,
              ),

              ///products
              gridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => productCardVertical()),
            ],
          ),
        ),
      ),
    );
  }
}
