import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/device/device_utility.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class tabBar extends StatelessWidget implements PreferredSizeWidget {
  const tabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = Helpers.isDarkMode(context);
    return Material(
      color: dark?CColors.black:CColors.white,
      child: TabBar(tabs: tabs,isScrollable: true,indicatorColor: CColors.primary,labelColor: dark? CColors.white:CColors.black,unselectedLabelColor: CColors.darkgrey,),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppbarHeight());
}
