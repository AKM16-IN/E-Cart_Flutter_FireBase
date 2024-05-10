import 'package:ecart/common/widgets/Text/brand_title_verification.dart';
import 'package:ecart/common/widgets/custom%20Shapes/containers/rounded_container.dart';
import 'package:ecart/common/widgets/images/circularImage.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/enums.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class brandCard extends StatelessWidget {
  const brandCard({
    super.key, this.showBorder = true, required this.brandIcon, this.ontap,
  });

  final bool showBorder;
  final String brandIcon;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: roundedContainer(
        padding: EdgeInsets.all(SSizes.s),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        borderColor: CColors.grey,
        child: Row(
          children: [
            Flexible(
              child: circularImage(
                image: brandIcon,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  brandTitlewithverification(title: 'Nike', brandTextSizes: textsizes.large,),
                  Text(
                    '256 products nssbyg',
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