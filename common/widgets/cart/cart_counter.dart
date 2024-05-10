import 'package:ecart/features/shop/screens/cart/cart.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class cartCounterIcon extends StatelessWidget {
  const cartCounterIcon({
    super.key,  this.iconColor, required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: () => Get.to(()=> cartScreen()), icon: Icon(Iconsax.shopping_bag, color: iconColor,),),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.orange),
            child: Center(child: Text('2',  style: Theme.of(context).textTheme.headlineSmall!.apply(color: CColors.black, fontSizeFactor: 0.6) ), ),
          ),
        ),
      ],
    );
  }
}