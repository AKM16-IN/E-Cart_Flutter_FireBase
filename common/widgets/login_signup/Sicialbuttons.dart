import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../features/authentication/controller/login/signIn_controller.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(signInController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: CColors.grey),borderRadius: BorderRadius.circular(100),),
          child: IconButton(onPressed: ()=> controller.googleSignIn(), icon: Image(
            height: SSizes.iconM,
            width: SSizes.iconM,
            image: AssetImage(IImageString.google),
          )),
        ),
        SizedBox(width: SSizes.btwitem,),
        Container(
          decoration: BoxDecoration(border: Border.all(color: CColors.grey),borderRadius: BorderRadius.circular(100),),
          child: IconButton(onPressed: (){}, icon: Image(
            height: SSizes.iconM,
            width: SSizes.iconM,
            image: AssetImage(IImageString.fb),
          )),
        ),
      ],
    );
  }
}