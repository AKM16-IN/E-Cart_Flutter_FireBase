import 'package:ecart/common/widgets/custom%20Shapes/containers/rounded_container.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class singleAddress extends StatelessWidget {
  const singleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = Helpers.isDarkMode(context);
    return roundedContainer(
      padding: EdgeInsets.all(SSizes.m),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress? CColors.primary.withOpacity(0.5):Colors.transparent,
      borderColor: selectedAddress?Colors.transparent:dark?CColors.darkergrey:CColors.grey,
      margin: EdgeInsets.only(bottom: SSizes.m),
      child: Stack(
        children: [
          Positioned(right:0,child: Icon(selectedAddress?Iconsax.tick_circle5:null, color: selectedAddress?dark?CColors.light:CColors.dark:null)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('John Doe', maxLines: 1, overflow: TextOverflow.ellipsis,style: Theme.of(context).textTheme.titleLarge,),
              SizedBox(height: SSizes.s/2,),
              Text('704488759',maxLines: 1, overflow: TextOverflow.ellipsis,),
              SizedBox(height: SSizes.s/2,),
              Text('#15164 hudda, sector 18, Yamuna Nagar, Haryabhbna, 135001, INDia',softWrap: true,),
            ],
          )
        ],
      ),
    );
  }
}
