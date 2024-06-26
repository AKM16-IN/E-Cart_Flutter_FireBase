import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class gridLayout extends StatelessWidget {
  const gridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 290,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: SSizes.gridViewSpacing,
            crossAxisSpacing: SSizes.gridViewSpacing,
            mainAxisExtent: mainAxisExtent,),
        itemBuilder: itemBuilder);
  }
}