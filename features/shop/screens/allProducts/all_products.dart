import 'package:ecart/common/widgets/appBar/appbar.dart';
import 'package:ecart/common/widgets/layout/grid_layout.dart';
import 'package:ecart/common/widgets/products/productCard/vertical_product_card.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class allProducts extends StatelessWidget {
  const allProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        title: Text('Popular Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.dspace),
          child: sortableProducts(),
        ),
      ),
    );
  }
}

class sortableProducts extends StatelessWidget {
  const sortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((option) => DropdownMenuItem(
                    child: Text(option),
                    value: option,
                  ))
              .toList(),
          onChanged: (value) {},
        ),

        SizedBox(height: SSizes.btwitem,),

        gridLayout(itemCount: 8, itemBuilder: (_, index)=>productCardVertical()),
      ],
    );
  }
}
