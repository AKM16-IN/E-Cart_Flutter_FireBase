import 'package:ecart/common/widgets/appBar/appbar.dart';
import 'package:ecart/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:ecart/features/shop/screens/checkout/checkout.dart';

import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class cartScreen extends StatelessWidget {
  const cartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.dspace),
          child: cartItem()
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(SSizes.dspace),
        child: ElevatedButton(onPressed:()=> Get.to(()=>checkoutScreen()), child: Text('Checkout ₹270.0'),),
      ),
    );
  }
}


