import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class billingAmount extends StatelessWidget {
  const billingAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///subtotals
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium,),
            Text('₹270', style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        SizedBox(height: SSizes.m/2,),

        ///shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping fee', style: Theme.of(context).textTheme.bodyMedium,),
            Text('₹10', style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        SizedBox(height: SSizes.m/2,),

        ///tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('tax fee', style: Theme.of(context).textTheme.bodyMedium,),
            Text('₹12.25', style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        SizedBox(height: SSizes.m/2,),

        ///order total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium,),
            Text('₹292.25', style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
      ],
    );;
  }
}
