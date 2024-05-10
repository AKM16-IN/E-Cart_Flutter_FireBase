import 'package:ecart/common/widgets/Text/productTitle.dart';
import 'package:ecart/common/widgets/Text/section_heading.dart';
import 'package:ecart/common/widgets/chips/choice_chip.dart';
import 'package:ecart/common/widgets/custom%20Shapes/containers/rounded_container.dart';
import 'package:ecart/common/widgets/products/cart/product_price.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class productAtttribute extends StatelessWidget {
  const productAtttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Helpers.isDarkMode(context);
    return Column(
      children: [
        ///selected attributes, pricing and detailing

        roundedContainer(
          padding: EdgeInsets.all(SSizes.m),
          backgroundColor: dark ? CColors.darkergrey : CColors.grey,
          child: Column(
            children: [
              ///title price and stocks
              Row(
                children: [
                  SectionHeading(title: 'Variation'),
                  SizedBox(
                    width: SSizes.m,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          productTitle(
                            title: 'Price: ',
                            smallSize: true,
                          ),

                          ///actual price
                          Text(
                            '₹250',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),

                          ///sale price
                          SizedBox(
                            width: SSizes.s,
                          ),
                          productPrice(price: '200'),
                        ],
                      ),

                      ///stock
                      Row(
                        children: [
                          productTitle(
                            title: 'Stock: ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              ///variation description
              productTitle(
                  title:
                      'this is the bhbsd description of product which can go upto 4lines',
                  maxLines: 4,
                  smallSize: true),
            ],
          ),
        ),

        SizedBox(height: SSizes.btwitem,),

        ///Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(title: 'Colors'),
            SizedBox(
              height: SSizes.m,
            ),
            Wrap(
              spacing: 8,
              children: [
                choiceChip(
                  text: 'Green',
                  selected: false,
                  onSelected: (value) {},
                ),
                choiceChip(
                  text: 'blue',
                  selected: true,
                  onSelected: (value) {},
                ),
                choiceChip(
                  text: 'red',
                  selected: true,
                  onSelected: (value) {},
                ),
                choiceChip(
                  text: 'yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),

        SizedBox(height: SSizes.btwitem,),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(title: 'Size'),
            SizedBox(
              height: SSizes.m,
            ),
            Wrap(
              spacing: 5,
              children: [
                choiceChip(
                  text: 'UK 6',
                  selected: true,
                  onSelected: (value) {},
                ),
                choiceChip(
                  text: 'UK 7',
                  selected: false,
                  onSelected: (value) {},
                ),
                choiceChip(
                  text: 'UK 8',
                  selected: false,
                  onSelected: (value) {},
                ),
                choiceChip(
                  text: 'UK 10',
                  selected: true ,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
