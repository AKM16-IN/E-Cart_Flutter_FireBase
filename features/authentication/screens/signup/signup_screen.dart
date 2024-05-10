import 'package:ecart/common/widgets/login_signup/Dividerform.dart';
import 'package:ecart/common/widgets/login_signup/Sicialbuttons.dart';
import 'package:ecart/features/authentication/controller/signup/signup_controller.dart';
import 'package:ecart/features/authentication/screens/signup/verify.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/constants/text_strings.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:ecart/utils/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:iconsax/iconsax.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(signUpController());
    final dark = Helpers.isDarkMode(context);
    return Scaffold (
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.dspace),
          child: Column(
            children: [
              /// Title
              Text(
                TText.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              SizedBox(
                height: SSizes.btwsection,
              ),

              /// Form
              Form(
                key: controller.signupFormKey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: controller.firstName,
                            expands: false,
                            validator: (value) => Validators.validateEmptyText(
                                'First name', value),
                            decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.user),
                              labelText: TText.firsName,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: SSizes.spacebtwInfield,
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: controller.lastName,
                            expands: false,
                            validator: (value) => Validators.validateEmptyText(
                                'Last name', value),
                            decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.user),
                              labelText: TText.lastName,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SSizes.spacebtwInfield,
                    ),
                    TextFormField(
                      controller: controller.username,
                      expands: false,
                      validator: (value) =>
                          Validators.validateEmptyText('Username', value),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.user_edit),
                        labelText: TText.usrName,
                      ),
                    ),
                    SizedBox(
                      height: SSizes.spacebtwInfield,
                    ),
                    TextFormField(
                      controller: controller.email,
                      expands: false,
                      validator: (value) => Validators.validateEmail(value),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.direct),
                        labelText: TText.email,
                      ),
                    ),
                    SizedBox(
                      height: SSizes.spacebtwInfield,
                    ),
                    TextFormField(
                      controller: controller.phoneNumber,
                      expands: false,
                      validator: (value) =>
                          Validators.validatePhonenumber(value),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.mobile),
                        labelText: TText.phone,
                      ),
                    ),
                    SizedBox(
                      height: SSizes.spacebtwInfield,
                    ),

                    ///password
                    Obx(
                      ()=> TextFormField(
                        controller: controller.password,
                        validator: (value) => Validators.validatePass(value),
                        obscureText: controller.hidePassword.value,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          suffixIcon: IconButton(
                              onPressed: () => controller.hidePassword.value =
                                  !controller.hidePassword.value,
                              icon: Icon(controller.hidePassword.value? Iconsax.eye_slash: Iconsax.eye)),
                          labelText: TText.pass,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SSizes.btwsection,
                    ),

                    ///checkbox for terms and conditions
                    Row(
                      children: [
                        Obx(()=> Checkbox(value: controller.privacyPolicy.value, onChanged: (value) => controller.privacyPolicy.value= !controller.privacyPolicy.value)),
                        SizedBox(),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: '${TText.agree}',
                                  style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(
                                  text: ' ${TText.privacy}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .apply(
                                        color: dark
                                            ? CColors.white
                                            : CColors.primary,
                                        decoration: TextDecoration.underline,
                                        decorationColor: dark
                                            ? CColors.white
                                            : CColors.primary,
                                      )),
                              TextSpan(
                                  text: ' and ',
                                  style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(
                                  text: '${TText.terms}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .apply(
                                        color: dark
                                            ? CColors.white
                                            : CColors.primary,
                                        decoration: TextDecoration.underline,
                                        decorationColor: dark
                                            ? CColors.white
                                            : CColors.primary,
                                      )),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () => controller.signup(),
                          child: Text(TText.createAccount)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: SSizes.btwitem,
              ),
              DividerForm(dividerText: TText.signUpWith),
              SizedBox(
                height: SSizes.spacebtwInfield,
              ),
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
