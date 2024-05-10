import 'dart:async';

import 'package:ecart/data/repositries/authentication_repo.dart';
import 'package:ecart/features/authentication/screens/signup/success_mail.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:ecart/utils/constants/text_strings.dart';
import 'package:ecart/utils/popups/loader.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class verifyEmailController extends GetxController {
  static verifyEmailController get instance => Get.find();

  @override
  void onInit() {
    sendEmailVerification();
    setTimerforAutoRedirect();
    super.onInit();
  }

  sendEmailVerification() async {
    try {
      await AuthenicationRepository.instance.sendEmailVerification();
      Tloader.successSnackBar(
          title: 'Email Sent',
          message: 'Please check your inbox and verify your email');
    } catch (e) {
      Tloader.errorSnackBar(title: 'oh Snap!', message: e.toString());
    }
  }

  setTimerforAutoRedirect() {
    Timer.periodic(Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(
          () => SuccessMail(
              image: IImageString.staticSuccessIllustration,
              title: TText.accountCreatedTitle,
              subtitle: TText.accountCreatedSubtitle,
              onPressed: () =>
                  AuthenicationRepository.instance.screenRedirect()),
        );
      }
    });
  }

  checkEmailVerificationStatus() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.offAll(
        () => SuccessMail(
            image: IImageString.staticSuccessIllustration,
            title: TText.accountCreatedTitle,
            subtitle: TText.accountCreatedSubtitle,
            onPressed: () => AuthenicationRepository.instance.screenRedirect()),
      );
    }
  }
}
