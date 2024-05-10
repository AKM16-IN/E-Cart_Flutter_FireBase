import 'package:ecart/data/repositries/authentication_repo.dart';
import 'package:ecart/features/authentication/controller/signup/veriy_email_controll.dart';
import 'package:ecart/features/authentication/screens/signin/login_screen.dart';
import 'package:ecart/features/authentication/screens/signup/success_mail.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/constants/text_strings.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key, this.email});
  final String? email;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(verifyEmailController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () =>AuthenicationRepository.instance.logOut() ,icon: Icon(CupertinoIcons.clear),),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.dspace),
          child: Column(
            children: [
              //controller.sendEmailVerification(),
              //controller.setTimerforAutoRedirect(),
              Image(image: AssetImage(IImageString.sendVerification), width: Helpers.ScreenWidth()*0.6,),
              SizedBox(height: SSizes.btwitem,),

              Text(TText.confirmEmailTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center ),
              SizedBox(height: SSizes.btwitem,),

              Text(email?? '', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              SizedBox(height: SSizes.btwitem,),

              Text(TText.confirmEmailSubtitle, style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              SizedBox(height: SSizes.btwsection,),

              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=> controller.checkEmailVerificationStatus(), child: Text(TText.Continue)),),

              SizedBox(width: double.infinity, child: TextButton(onPressed: ()=> controller.sendEmailVerification(), child: Text(TText.resendEmail)),),
            ],
          ),
        ),
      ),
    );
  }
}
