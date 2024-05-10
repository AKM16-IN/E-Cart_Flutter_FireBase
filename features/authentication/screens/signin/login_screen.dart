import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecart/common/styles/spacing.dart';
import 'package:ecart/common/widgets/login_signup/Dividerform.dart';
import 'package:ecart/common/widgets/login_signup/Sicialbuttons.dart';
import 'package:ecart/common/widgets/login_signup/SigninForm.dart';
import 'package:ecart/features/authentication/controller/login/signIn_controller.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/constants/text_strings.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = Helpers.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: Spacings.paddingwithAppbar,
          child: Column(
            children: [
              LoginHeader(dark: dark),

              LoginForm(),

              DividerForm(dividerText: TText.signInWith.capitalize!,),

              SizedBox(height: SSizes.btwsection),

              SocialButtons()

            ],
          ),
        ),
      ),
    );
  }
}



class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(dark ? IImageString.darkApplogo: IImageString.lightApplogo),
          height: 150,
        ),
        Text(TText.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
        SizedBox(height: SSizes.s,),
        Text(TText.loginSubtitle, style: Theme.of(context).textTheme.bodyMedium,),
      ],
    );
  }
}




