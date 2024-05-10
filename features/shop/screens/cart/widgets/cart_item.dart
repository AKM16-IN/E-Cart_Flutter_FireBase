import 'package:ecart/common/widgets/cart/product_quantity.dart';
import 'package:ecart/common/widgets/custom%20Shapes/containers/rounded_container.dart';
import 'package:ecart/common/widgets/products/cart/product_price.dart';
import 'package:ecart/common/widgets/cart/cait_item.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class cartItem extends StatelessWidget {
  const cartItem({
    super.key,
    this.showAddRemoveButton = true
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      // scrollDirection: Axis.vertical,
      physics: ScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (_, __) => SizedBox(
        height: SSizes.btwitem,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          cartItems(),
          if(showAddRemoveButton)SizedBox(
            height: SSizes.m,
          ),
          if(showAddRemoveButton)roundedContainer(
            margin: EdgeInsets.only(left: 70),
            padding: EdgeInsets.symmetric(horizontal: 5),
            backgroundColor: CColors.light,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //SizedBox(width: 70,),
                    //add remove
                    productQuantity_ADD_Remove(),
                  ],
                ),
                productPrice(price: '270'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
