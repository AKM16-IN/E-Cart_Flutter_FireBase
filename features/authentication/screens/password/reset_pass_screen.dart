import 'package:ecart/common/styles/spacing.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/constants/text_strings.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.back(), icon: Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        padding: Spacings.paddingwithAppbar,
        child: Column(

          children: [
            ///Image
            Image(image: AssetImage(IImageString.passlink), width: Helpers.ScreenWidth()*0.6,),
            SizedBox(height: SSizes.btwitem,),

            ///headings
            Text(TText.changePassTitle, style: Theme.of(context).textTheme.headlineMedium,),
            SizedBox(height: SSizes.btwitem,),
            Text(TText.changePassSubtitle, style: Theme.of(context).textTheme.labelMedium,),
            SizedBox(height: SSizes.btwsection,),

            ///buttons
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Done')),),
            SizedBox(width: double.infinity,child: TextButton(onPressed: (){}, child: Text(TText.resendEmail)),),
          ],
        ),
      ),
    );
  }
}
