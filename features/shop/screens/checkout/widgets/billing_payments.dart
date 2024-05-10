import 'package:ecart/common/widgets/Text/section_heading.dart';
import 'package:ecart/common/widgets/custom%20Shapes/containers/rounded_container.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class billingPayment extends StatelessWidget {
  const billingPayment({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Helpers.isDarkMode(context);
    return Column(
      children: [
        SectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          showActionButton: true,
          onPressed: () {},
        ),
        SizedBox(
          height: SSizes.m / 2,
        ),
        Row(
          children: [
            roundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? CColors.light : CColors.white,
              padding: EdgeInsets.all(SSizes.s),
              child: Image(
                image: AssetImage(
                  IImageString.paypal,
                ),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: SSizes.xs/2,),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge,),
          ],
        ),
      ],
    );
  }
}