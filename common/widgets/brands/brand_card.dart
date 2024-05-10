import 'package:ecart/common/widgets/Text/brand_title_verification.dart';
import 'package:ecart/common/widgets/custom%20Shapes/containers/rounded_container.dart';
import 'package:ecart/common/widgets/images/circularImage.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/enums.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class brandCard extends StatelessWidget {
  const brandCard({super.key, required this.showBorder, this.onTap});

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isdark = Helpers.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: roundedContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.all(SSizes.s),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///icon
            Flexible(
              child: circularImage(
                image: IImageString.clothIcon,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: isdark ? CColors.white : CColors.black,
              ),
            ),
            SizedBox(
              width: SSizes.m / 2,
            ),

            ///texts
            //[expanded] and column [mainaxisSize.min] is important to keep the element in vertical center also
            //to keep text in boundaries

            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  brandTitlewithverification(
                    title: 'Nike',
                    brandTextSizes: textsizes.large,
                  ),
                  Text(
                    '25',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
