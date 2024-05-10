import 'package:ecart/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class shadowStyle{

  static final vertcialProductShadow = BoxShadow(
    color: CColors.darkgrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2)
  );

  static final horizontalProductShadow = BoxShadow(
      color: CColors.darkgrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: Offset(0, 2)
  );
}