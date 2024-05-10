import 'package:ecart/common/widgets/appBar/appbar.dart';
import 'package:ecart/common/widgets/products/rating/rating_indicaror.dart';
import 'package:ecart/features/shop/screens/product_review/widget/overall_rating.dart';
import 'package:ecart/features/shop/screens/product_review/widget/user_review.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class productReview extends StatelessWidget {
  const productReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.dspace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Ratinngs and Reviews are avrifird and are from people who use the same type of device that you are using'),
              SizedBox(
                height: SSizes.m,
              ),

              ///overall product ratings
              overallProductRating(),
              ratingBarIndicator(rating: 2.5,),
              Text('12,611',style: Theme.of(context).textTheme.bodySmall,),
              SizedBox(height: SSizes.btwitem,),

              ///User rievew
              userReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}






