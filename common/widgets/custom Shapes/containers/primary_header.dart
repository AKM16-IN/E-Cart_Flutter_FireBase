import 'package:ecart/common/widgets/custom%20Shapes/Curvedshapes/curved_shape_widget.dart';
import 'package:ecart/common/widgets/custom%20Shapes/containers/circularContainer.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(child: Container(
      color: CColors.primary,
      padding: EdgeInsets.all(0),
      child: Stack(
        children: [
          Positioned(top: -150, right: -250,child: CircularContainer(backgroundColor: CColors.textwhite.withOpacity(0.1),),),
          Positioned(bottom: -140 , right: -300,child: CircularContainer(backgroundColor: CColors.textwhite.withOpacity(0.1),),),
          child,
        ],
      ),
    ),);
  }
}