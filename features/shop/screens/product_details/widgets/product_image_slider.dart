import 'package:ecart/common/widgets/appBar/appbar.dart';
import 'package:ecart/common/widgets/custom%20Shapes/Curvedshapes/curved_shape_widget.dart';
import 'package:ecart/common/widgets/icon/circular_Icon.dart';
import 'package:ecart/common/widgets/images/roundedImages.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class productImageSlider extends StatelessWidget {
  const productImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = Helpers.isDarkMode(context);
    return CurvedEdgeWidget(
      child: Container(
        color: dark ? CColors.darkgrey : CColors.light,
        child: Stack(
          children: [
            ///main Large Image of Product
            SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(SSizes.imagesize),
                child: Center(
                  child: Image(
                    image: AssetImage(IImageString.productImage5),
                  ),
                ),
              ),
            ),

            ///image slider
            Positioned(right: 0,left: 20,bottom: 30,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) =>
                      SizedBox(width: SSizes.m),
                  itemCount: 6,
                  itemBuilder: (_, index) {
                    return roundedImage(
                      imageurl: IImageString.productImage3,
                      width: 80,
                      backgroundColor: dark ? CColors.dark : CColors.white,
                      border: Border.all(color: CColors.primary),
                      padding: EdgeInsets.all(SSizes.s),
                    );
                  },
                ),
              ),
            ),
            Appbar(
              showBackArrow: true,
              action: [
                circularIcon(icon: Iconsax.heart5, color: Colors.red,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}