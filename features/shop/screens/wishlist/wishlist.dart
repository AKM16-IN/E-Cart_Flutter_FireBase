import 'package:ecart/common/widgets/appBar/appbar.dart';
import 'package:ecart/common/widgets/icon/circular_Icon.dart';
import 'package:ecart/common/widgets/layout/grid_layout.dart';
import 'package:ecart/common/widgets/products/productCard/vertical_product_card.dart';
import 'package:ecart/features/shop/screens/home/home.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        action: [
          circularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(
              HomeScreen(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.dspace),
          child: Column(
            children: [
              gridLayout(itemCount: 4, itemBuilder: (_, index)=> productCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
