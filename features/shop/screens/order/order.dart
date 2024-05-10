import 'package:ecart/common/widgets/appBar/appbar.dart';
import 'package:ecart/features/shop/screens/order/widget/order_list.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class orderScreen extends StatelessWidget {
  const orderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        title: Text(
          'Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(SSizes.dspace),

        ///orders
        child: toOrderlist() ,
      ),
    );
  }
}
