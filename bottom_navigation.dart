import 'package:ecart/features/personalizaton/screens/settings/settings.dart';
import 'package:ecart/features/shop/screens/home/home.dart';
import 'package:ecart/features/shop/screens/store/store.dart';
import 'package:ecart/features/shop/screens/wishlist/wishlist.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = Helpers.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index)=> controller.selectedIndex.value = index ,
            destinations: [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shope'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        ]),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{

  final Rx<int> selectedIndex = 0.obs;
  final screens  = [HomeScreen(), store(), Wishlist(), settingScreen(),];
}
