import 'package:ecart/common/widgets/custom%20Shapes/containers/rounded_container.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class couponCode extends StatelessWidget {
  const couponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = Helpers.isDarkMode(context);
    return roundedContainer(
      showBorder: true,
      backgroundColor: dark ? CColors.dark : CColors.white,
      padding: EdgeInsets.only(
          top: SSizes.s,
          left: SSizes.m,
          right: SSizes.s,
          bottom: SSizes.s),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Have a promo code? Enter here!!',
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  errorBorder: InputBorder.none),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Apply'),
            style: ElevatedButton.styleFrom(
              foregroundColor: dark
                  ? CColors.white.withOpacity(0.5)
                  : CColors.dark.withOpacity(0.5),
              backgroundColor: CColors.grey.withOpacity(0.2),
              side: BorderSide(
                color: CColors.grey.withOpacity(0.1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}