import 'package:ecart/common/widgets/appBar/appbar.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class addNewAddress extends StatelessWidget {
  const addNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        showBackArrow: true,
        title: Text('Add new address'),
      ),
      body: Padding(
        padding: EdgeInsets.all(SSizes.dspace),
        child: ListView(
          children: [Form(
            child: Column(
              children: [
                TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: 'Name'),),
                SizedBox(height: SSizes.spacebtwInfield,),
                TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'phone no.'),),
                SizedBox(height: SSizes.spacebtwInfield,),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building_31), labelText: 'Street'),)),
                    SizedBox(width: SSizes.s,),
                    Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.code), labelText: 'Postal Code'),)),
                  ],
                ),
                SizedBox(height: SSizes.spacebtwInfield,),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building), labelText: 'City'),)),
                    SizedBox(width: SSizes.s,),
                    Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.activity), labelText: 'State'),)),
                  ],
                ),
                SizedBox(height: SSizes.spacebtwInfield,),
                TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.global), labelText: 'Country'),),
                SizedBox(height: SSizes.dspace,),
                SizedBox(width:double.infinity,child: ElevatedButton(onPressed: (){}, child: Text('Save'),)),
              ],
            ),
          ),
    ]
        ),
      ),
    );
  }
}
