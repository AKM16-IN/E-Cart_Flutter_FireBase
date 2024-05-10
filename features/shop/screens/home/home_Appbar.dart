import 'package:ecart/common/widgets/appBar/appbar.dart';
import 'package:ecart/common/widgets/cart/cart_counter.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Appbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TText.homeppbartitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: CColors.grey),),
          Text(TText.homeappbarsubtitle1, style: Theme.of(context).textTheme.headlineSmall!.apply(color: CColors.white),),
        ],
      ),
      action: [
        cartCounterIcon(onPressed: (){}, iconColor: CColors.white,),
      ],
    );
  }
}