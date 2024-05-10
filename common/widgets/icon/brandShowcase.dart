import 'package:ecart/common/widgets/custom%20Shapes/containers/rounded_container.dart';
import 'package:ecart/common/widgets/icon/brand_card.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class brandShowCase extends StatelessWidget {
  const brandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return roundedContainer(
      showBorder: true,
      borderColor: CColors.darkgrey,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(SSizes.m),
      margin: EdgeInsets.only(bottom: SSizes.m),
      child: Column(
        children: [
          ///brand with product count
          brandCard(
            brandIcon: IImageString.shoes,
            showBorder: false,
          ),

          ///brand's top 3 product images
          Row(
            children: images
                .map((image) => topProductImages(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget topProductImages(String image, context) {
    return Expanded(
      child: roundedContainer(
        height: 100,
        backgroundColor:
        Helpers.isDarkMode(context) ? CColors.darkergrey : CColors.white,
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
        padding: EdgeInsets.all(SSizes.s),
      ),
    );
  }
}