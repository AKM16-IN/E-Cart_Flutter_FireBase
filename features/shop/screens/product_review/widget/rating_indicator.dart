import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class ratingProgressIndicator extends StatelessWidget {
  const ratingProgressIndicator({
    super.key, required this.text, required this.values,
  });

  final String text;
  final double values;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(flex: 11,
          child: SizedBox(
            width: DeviceUtils.getScreenWidth() ,
            child: LinearProgressIndicator(
              value: values,
              minHeight: 11,
              backgroundColor: CColors.grey,
              borderRadius: BorderRadius.circular(7),
              valueColor: AlwaysStoppedAnimation(CColors.primary),
            ),),
        ),
      ],
    );
  }
}