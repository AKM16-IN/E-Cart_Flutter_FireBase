import 'dart:ui';

import 'package:ecart/bottom_navigation.dart';
import 'package:ecart/common/widgets/appBar/appbar.dart';
import 'package:ecart/common/widgets/custom%20Shapes/containers/rounded_container.dart';
import 'package:ecart/common/widgets/products/coupons/coupon_code.dart';
import 'package:ecart/features/authentication/screens/signup/success_mail.dart';
import 'package:ecart/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:ecart/features/shop/screens/checkout/widgets/billingAmout.dart';
import 'package:ecart/features/shop/screens/checkout/widgets/billing_address.dart';
import 'package:ecart/features/shop/screens/checkout/widgets/billing_payments.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class checkoutScreen extends StatelessWidget {
  const checkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Helpers.isDarkMode(context);
    return Scaffold(
      appBar: Appbar(
        showBackArrow: true,
        title: Text(
          'Checkout',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.dspace),
          child: Column(
            children: [
              cartItem(
                showAddRemoveButton: false,
              ),
              SizedBox(
                height: SSizes.btwitem,
              ),
              /*SizedBox(
                height: SSizes.btwitem,
              ),*/

              ///cupons code
              couponCode(),
              SizedBox(height: SSizes.btwitem,),
              ///billing
              roundedContainer(
                showBorder: true,
                backgroundColor: dark?CColors.black:CColors.white,
                child: Padding(
                  padding: const EdgeInsets.all(SSizes.dspace ),
                  child: Column(
                    children: [
                      ///pricing
                     billingAmount(),
                      SizedBox(height: SSizes.m,),

                      ///divider
                      Divider(),
                      SizedBox(height: SSizes.m,),

                      ///payments methods
                      billingPayment(),
                      SizedBox(height: SSizes.m,),

                      ///address
                      billingAddress(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    bottomNavigationBar: Padding(
    padding: const EdgeInsets.all(SSizes.dspace),
    child: ElevatedButton(onPressed:()=> Get.to(()=>SuccessMail(image: IImageString.successfulPaymentIcon, title: 'Payment Success', subtitle: 'Your Item will be shipped soon!', onPressed: ()=>Get.offAll(()=> BottomNavigation()),),), child: Text('Checkout ₹270.0'),),
    ),);
  }
}
