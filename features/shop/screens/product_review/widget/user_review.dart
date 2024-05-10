import 'package:ecart/common/widgets/custom%20Shapes/containers/rounded_container.dart';
import 'package:ecart/common/widgets/products/rating/rating_indicaror.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class userReviewCard extends StatelessWidget {
  const userReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Helpers.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(IImageString.userProfileImage1),
                ),
                SizedBox(
                  width: SSizes.m,
                ),
                Text(
                  'John Doe',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        Row(
          children: [
            ratingBarIndicator(rating: 3),
            SizedBox(
              width: SSizes.m,
            ),
            Text(
              '27 Feb 2024',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        SizedBox(
          height: SSizes.m,
        ),
        ReadMoreText(
          'bbbuwfuybwewehbdewyudewb ewdh ewdwdewvewewghvewuvewc c wecwe cuwe uwbhjv h dge cvuvaduavd',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: CColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: CColors.primary),
        ),
        SizedBox(
          height: SSizes.m,
        ),
        roundedContainer(
          backgroundColor: dark ? CColors.darkergrey : CColors.grey,
          child: Padding(
            padding: EdgeInsets.all(SSizes.m),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hatti',style: Theme.of(context).textTheme.titleLarge,),
                    Text('29 Feb 2024',style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                ),
                SizedBox(height: SSizes.m,),
                ReadMoreText(
                  'bbbuwfuybwewehbdewyudewb ewdh ewdwdewvewewghvewuvewc c wecwe cuwe uwbhjv h dge cvuvaduavd',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: CColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: CColors.primary),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
