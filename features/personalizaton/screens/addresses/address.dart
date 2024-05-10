import 'package:ecart/common/widgets/appBar/appbar.dart';
import 'package:ecart/features/personalizaton/screens/addresses/add_new_address.dart';
import 'package:ecart/features/personalizaton/screens/addresses/widgets/single_address.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class userAddresses extends StatelessWidget {
  const userAddresses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(
          () => addNewAddress(),
        ),
        child: Icon(
          Iconsax.add,
          color: CColors.white,
        ),
      ),
      appBar: Appbar(
        showBackArrow: true,
        title: Text(
          'Address',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.dspace),
          child: Column(
            children: [
              singleAddress(selectedAddress: true),
              singleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
