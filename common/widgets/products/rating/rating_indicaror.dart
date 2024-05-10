import 'package:ecart/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class ratingBarIndicator extends StatelessWidget {
  const ratingBarIndicator({
    super.key,
    required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemBuilder: (_, __) => Icon(
        Iconsax.star1,
        color: CColors.primary,
      ),
      rating: rating,
      itemSize: 20,
    );
  }
}
