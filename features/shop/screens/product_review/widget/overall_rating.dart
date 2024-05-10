import 'package:ecart/features/shop/screens/product_review/widget/rating_indicator.dart';
import 'package:flutter/material.dart';

class overallProductRating extends StatelessWidget {
  const overallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3,
          child: Text(
            '4.8',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Expanded(flex: 7,
          child: Column(
            children: [
              ratingProgressIndicator(text: '5',values: 01,),
              ratingProgressIndicator(text: '4',values: 0.7,),
              ratingProgressIndicator(text: '3',values: 0.6,),
              ratingProgressIndicator(text: '2',values: 0.5,),
              ratingProgressIndicator(text: '1',values: 0.2,),
            ],
          ),
        ),
      ],
    );
  }
}