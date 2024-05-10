import 'package:ecart/Bindings/generalBindings.dart';
import 'package:ecart/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.LightTheme,
      darkTheme: AppTheme.DarkTheme,
      initialBinding: generalBindings(),
      home:  Scaffold( backgroundColor: CColors.primary, body: Center(child: CircularProgressIndicator(color: Colors.white,),),)
      //OnboardingScreen(),
    );
  }
}