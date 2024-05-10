import 'package:ecart/common/widgets/ListTile/profile_tile.dart';
import 'package:ecart/common/widgets/ListTile/setting_menuTile.dart';
import 'package:ecart/common/widgets/Text/section_heading.dart';
import 'package:ecart/common/widgets/appBar/appbar.dart';
import 'package:ecart/common/widgets/custom%20Shapes/containers/primary_header.dart';
import 'package:ecart/features/authentication/screens/signin/login_screen.dart';
import 'package:ecart/features/personalizaton/screens/addresses/address.dart';
import 'package:ecart/features/personalizaton/screens/profile/profile.dart';
import 'package:ecart/features/shop/screens/order/order.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class settingScreen extends StatelessWidget {
  const settingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  Appbar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: CColors.white),
                    ),
                  ),
                  SizedBox(
                    height: SSizes.m,
                  ),

                  ///userprofile
                  usrProfileTile(onPressed: () {Get.to(Profile());  },),
                  SizedBox(
                    height: SSizes.btwsection,
                  ),
                ],
              ),
            ),

            ///body
            Padding(
              padding: EdgeInsets.all(SSizes.dspace),
              child: Column(
                children: [

                  ///Account settings
                  SectionHeading(
                    title: 'Account Settings',
                  ),
                  SizedBox(
                    height: SSizes.m,
                  ),
                  menuSettingTile(icon: Iconsax.safe_home, title: 'Address', subtitle: 'Set shopping delivery address', onTap: () => Get.to(()=> userAddresses()),),
                  menuSettingTile(icon: Iconsax.shopping_cart, title: 'My Cart', subtitle: 'Add, remove or move product to checkout'),
                  menuSettingTile(icon: Iconsax.bag_tick, title: 'My Orders', subtitle: 'In-progress or Completed orders', onTap: () => Get.to(()=> orderScreen()),),
                  menuSettingTile(icon: Iconsax.bank, title: 'Bank Accounts', subtitle: 'Withdraw balance to register bank account'),
                  menuSettingTile(icon: Iconsax.discount_shape, title: 'My Coupons', subtitle: 'List of all Discount Coupons'),
                  menuSettingTile(icon: Iconsax.notification, title: 'Notifications', subtitle: 'Set kind of notification message'),
                  menuSettingTile(icon: Iconsax.security_card, title: 'Account Privacy', subtitle: 'Manage account usage and connected accounts'),

                  ///App settings
                  SizedBox(height: SSizes.btwsection,),
                  SectionHeading(title: 'App Settings'),
                  menuSettingTile(icon: Iconsax.document_upload, title: 'Load Data', subtitle: 'Upload data to your FireBase Cloud'),
                  menuSettingTile(icon: Iconsax.location, title: 'GeoLocation', subtitle: 'Set recommendation based on location',trailing: Switch(value: true, onChanged: (value){}),),
                  menuSettingTile(icon: Iconsax.security_user, title: 'Safe Mode', subtitle: 'Search result is safe for all ages', trailing: Switch(value: false, onChanged: (value){},),),
                  menuSettingTile(icon: Iconsax.image, title: 'HD Image Quality', subtitle: 'Set Image quality to be seen', trailing: Switch(value: false, onChanged: (value){}),),

                  ///logout
                  SizedBox(height: SSizes.m,),
                  SizedBox(width: double.infinity,child: OutlinedButton(onPressed: ()=> Get.offAll(()=> loginScreen()), child: Text('Logout'),),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
