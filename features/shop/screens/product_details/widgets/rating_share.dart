import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ratingndShare extends StatelessWidget {
  const ratingndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ///rating
        Row(
          children: [
            Icon(
              Iconsax.star5,
              color: Colors.amber,
            ),
            SizedBox(
              width: SSizes.s,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '4.6',
                      style:
                      Theme.of(context).textTheme.bodyLarge),
                  TextSpan(text: '(199)'),
                ],
              ),
            ),
          ],
        ),

        ///share
        IconButton(onPressed: (){}, icon: Icon(Icons.share),),
      ],
    );
  }
}