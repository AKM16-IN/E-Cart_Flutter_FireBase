import 'package:ecart/bottom_navigation.dart';
import 'package:ecart/features/authentication/controller/login/signIn_controller.dart';
import 'package:ecart/features/authentication/screens/password/forgot_pass_screen.dart';
import 'package:ecart/features/authentication/screens/signup/signup_screen.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/validators/validators.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(signInController());
    return Form(
      key: controller.signInFormKey,
      child: Padding(
      padding: EdgeInsets.symmetric(vertical: SSizes.btwsection),
      child: Column(
        children: [
          TextFormField(
            controller: controller.email,
            validator: (value) => Validators.validateEmail(value),
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TText.email,
            ),
          ),
          SizedBox(height: SSizes.spacebtwInfield,),
          Obx(
                ()=> TextFormField(
              controller: controller.password,
              validator: (value) => Validators.validateEmptyText('Password',value),
              obscureText: controller.hidePass.value,
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                    onPressed: () => controller.hidePass.value =
                    !controller.hidePass.value,
                    icon: Icon(controller.hidePass.value? Iconsax.eye_slash: Iconsax.eye)),
                labelText: TText.pass,
              ),
            ),
          ),
          SizedBox(height: SSizes.spacebtwInfield / 2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            children: [
              Obx(
                  ()=> Row(
                  children: [
                    Checkbox(value: controller.rememberMe.value, onChanged: (value)=> controller.rememberMe.value =  !controller.rememberMe.value),
                    Text(TText.remember),
                  ],
                ),
              ),
              TextButton(onPressed: ()=> Get.to(()=> ForgotPassword()), child: Text(TText.forgotPass),),
            ],
          ),
          SizedBox(height: SSizes.btwsection,),

          SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => controller.emailPassSignIn(), child: Text(TText.signIn),)),

          SizedBox(height: SSizes.btwitem,),

          SizedBox(width: double.infinity,child: OutlinedButton(onPressed: (){ Get.to(() => Signup());}, child: Text(TText.createAccount),)),

          SizedBox(height: SSizes.btwsection,),
        ],
      ),
    ),);
  }
}