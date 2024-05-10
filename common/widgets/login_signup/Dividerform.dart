import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class DividerForm extends StatelessWidget {
  const DividerForm({
    super.key,
    required this.dividerText
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = Helpers.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark? CColors.darkgrey: CColors.grey, thickness: 0.5, indent: 60, endIndent: 5,)),
        Text(
          dividerText, style: Theme.of(context).textTheme.labelMedium ,
        ),
        Flexible(child: Divider(color: dark? CColors.darkgrey: CColors.grey, thickness: 0.5, indent: 5, endIndent: 60,)),
      ],
    );
  }
}