import 'package:ecart/common/widgets/Text/section_heading.dart';
import 'package:ecart/common/widgets/appBar/appbar.dart';
import 'package:ecart/common/widgets/appBar/tabBar.dart';
import 'package:ecart/common/widgets/cart/cart_counter.dart';
import 'package:ecart/common/widgets/custom%20Shapes/containers/Search_Container.dart';
import 'package:ecart/common/widgets/icon/brand_card.dart';
import 'package:ecart/common/widgets/layout/grid_layout.dart';
import 'package:ecart/features/shop/screens/store/widgets/category.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class store extends StatelessWidget {
  const store({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: Appbar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          action: [
            cartCounterIcon(
              onPressed: () {},
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, isInnerBoxScrollable) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                floating: true,
                pinned: true,
                expandedHeight: 440,
                backgroundColor:
                    Helpers.isDarkMode(context) ? CColors.black : CColors.white,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(SSizes.dspace),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      SizedBox(
                        height: SSizes.btwitem,
                      ),
                      SearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        icon: Iconsax.search_normal,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(
                        height: SSizes.btwsection,
                      ),
                      SectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                        showActionButton: true,
                      ),
                      SizedBox(
                        height: SSizes.m,
                      ),
                      gridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80.0,
                        itemBuilder: (_, index) {
                          return brandCard(
                            brandIcon: IImageString.sports,
                            showBorder: false,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                bottom: tabBar(
                  tabs: [
                    Tab(
                      child: Text('sports'),
                    ),
                    Tab(
                      child: Text('Clothes'),
                    ),
                    Tab(
                      child: Text('Furniture'),
                    ),
                    Tab(
                      child: Text('Electronics'),
                    ),
                    Tab(
                      child: Text('Cosmetics'),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              categoryTab(),
              categoryTab(),
              categoryTab(),
              categoryTab(),
              categoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
