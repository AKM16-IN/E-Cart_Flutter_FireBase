import 'package:ecart/common/widgets/Text/section_heading.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class billingAddress extends StatelessWidget {
  const billingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          showActionButton: true,
          onPressed: () {},
        ),
        Text('AK', style: Theme.of(context).textTheme.bodyLarge,),

        Row(
          children: [
            Icon(Icons.phone, color: CColors.grey, size: 15,),
            SizedBox(width: SSizes.m,),
            Text('740354813', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        SizedBox(height: SSizes.m/2,),Row(
          children: [
            Icon(Icons.location_history, color: CColors.grey, size: 15,),
            SizedBox(width: SSizes.m,),
            Expanded(child: Text('YamunaNagar, Haryana, India', style: Theme.of(context).textTheme.bodyMedium,softWrap: true,),),
          ],
        ),
        SizedBox(height: SSizes.m/2,),
      ],
    );
  }
}



