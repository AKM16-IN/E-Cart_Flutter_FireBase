import 'package:ecart/common/widgets/custom%20Shapes/containers/rounded_container.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class toOrderlist extends StatelessWidget {
  const toOrderlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (_,__)=> SizedBox(height: SSizes.m,),
      itemBuilder:(_, index)=> roundedContainer(
        padding: EdgeInsets.all(SSizes.dspace),
        showBorder: true,
        backgroundColor:
            Helpers.isDarkMode(context) ? CColors.dark : CColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            ///row 1
            Row(
              children: [
                ///icon
                Icon(Iconsax.ship),
                SizedBox(
                  width: SSizes.m,
                ),

                ///status and date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: CColors.primary, fontWeightDelta: 1),
                      ),
                      Text(
                        '27 Feb, 2024',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Iconsax.arrow_right_34),
                ),
              ],
            ),

            SizedBox(height: SSizes.s,),

            ///row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      ///icon
                      Icon(Iconsax.tag),
                      SizedBox(
                        width: SSizes.m,
                      ),

                      ///status and date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium,
                            ),
                            Text(
                              '#27fg2',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      ///icon
                      Icon(Iconsax.calendar),
                      SizedBox(
                        width: SSizes.m,
                      ),

                      ///status and date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipping Date',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium,
                            ),
                            Text(
                              '02 Mar, 2024',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
