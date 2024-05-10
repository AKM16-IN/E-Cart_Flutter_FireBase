import 'package:ecart/common/styles/spacing.dart';
import 'package:ecart/features/authentication/screens/password/reset_pass_screen.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(padding: Spacings.paddingwithAppbar,child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///headings
            Text(TText.forgotPassTitle, style: Theme.of(context).textTheme.headlineMedium,),
            SizedBox(height: SSizes.btwitem,),
            Text(TText.forgotPassSubtitle, style: Theme.of(context).textTheme.labelMedium,),
            SizedBox(height: SSizes.btwsection,),
            ///text field
            TextFormField(
              decoration: InputDecoration(
                labelText: TText.email, prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            SizedBox(height: SSizes.btwsection,),

            ///submit button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=> Get.off(()=> ResetPassword()), child: Text(TText.submit)),),
          ],
        ),),
      ),
    );
  }
}
