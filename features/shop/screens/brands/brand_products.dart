import 'package:ecart/common/widgets/appBar/appbar.dart';
import 'package:ecart/common/widgets/icon/brand_card.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class brandProducts extends StatelessWidget {
  const brandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        title: Text('Nike'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.dspace),
          child: Column(
            children: [
              brandCard(showBorder: true, brandIcon:"assets/icons/brands/nike.png" ,),
            ],
          ),
        ),
      ),
    );
  }
}
