

import 'package:ecart/bottom_navigation.dart';
import 'package:ecart/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:ecart/features/authentication/screens/signin/login_screen.dart';
import 'package:ecart/features/authentication/screens/signup/verify.dart';
import 'package:ecart/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:ecart/utils/exceptions/firebase_exceptions.dart';
import 'package:ecart/utils/exceptions/format_exceptions.dart';
import 'package:ecart/utils/exceptions/platform_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/_http/_html/_file_decoder_html.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenicationRepository extends GetxController {
  static AuthenicationRepository get instance => Get.find();

  ///variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  ///called from main.dart on app launch
  @override
  void onReady() {
    //remove splash screen
    FlutterNativeSplash.remove();
    //redirect to appropriate screen
    screenRedirect();
  }

  /// function to show relevant screen
  screenRedirect() async {
    final user = _auth.currentUser;
    if(user!=null) {
      //usr is logged in
      if (user.emailVerified) {
        //if email is verified
        Get.offAll(() => BottomNavigation());
      } else {
        //if email is not verified
        Get.offAll(() => VerifyScreen(email: _auth.currentUser?.email,));
      }
    } else{
      deviceStorage.writeIfNull('is first', true);
      deviceStorage.read('is first') != true
          ? Get.offAll(() => loginScreen()) //redirect to login screen if not first time
          : Get.offAll(OnboardingScreen()); // redirect to login dcreen if first time
    }
    //local storage
    /*if(kDebugMode){
      print('============ Get Storage =================');
      print(deviceStorage.read('is first'));
    }*/



  }


  // ---------------------------Email password Sign in---------------------------//


/// Email authentication - Signin

  Future<UserCredential> signInwithEmailPass(String email, String password) async{
    try{
      return await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e){
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch(e){
      throw TFirebaseException(e.code).message;
    } on FormatException catch(_){
      throw const TFormatException();
    } on PlatformException catch(e){
      throw TPlatformException(e.code).message;
    } catch(e){
      throw 'Something went wrong, try again later';
    }
  }


/// Email authentication - Register
  Future<UserCredential> registerEmailandPassword(String email, String password) async{
    try{
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e){
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch(e){
      throw TFirebaseException(e.code).message;
    } on FormatException catch(_){
      throw const TFormatException();
    } on PlatformException catch(e){
      throw TPlatformException(e.code).message;
    } catch(e){
      throw 'Something went wrong, try again later';
    }
  }

/// Email Verification - Mail Verification
  Future<void> sendEmailVerification()async{
    try{
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch(e){
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch(e){
      throw TFirebaseException(e.code).message;
    } on FormatException catch(_){
      throw const TFormatException();
    } on PlatformException catch(e){
      throw TPlatformException(e.code).message;
    } catch(e){
      throw 'Something went wrong, try again later';
    }
  }
/// Re authenticate - Reauthenticate user
/// Emial Authentication - Foregt Password

  //---------------------------Federate identity and Social signin----------------//

///Google Authentication
  Future<UserCredential> signInwithGoogle()async{
    try{
      //trigger authentication flow
      final GoogleSignInAccount? userAccount = await GoogleSignIn().signIn();

      //obtain auth details from request
      final GoogleSignInAuthentication? googleAuth = await userAccount?.authentication;

      //create new credentials
      final credentials = GoogleAuthProvider.credential(accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

      //once signed in, return the user Credentials
      return await _auth.signInWithCredential(credentials);

    } on FirebaseAuthException catch(e){
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch(e){
      throw TFirebaseException(e.code).message;
    } on FormatException catch(_){
      throw const TFormatException();
    } on PlatformException catch(e){
      throw TPlatformException(e.code).message;
    } catch(e){
      throw 'Something went wrong, try again later';
    }
  }
///Facebook Authentication

  //---------------------- ./end Federate indentity and social sign in----------------//

///logout user - valid for any authentication

  Future<void> logOut()async{
    try{
      await FirebaseAuth.instance.signOut();
      Get.offAll(()=> loginScreen());
    } on FirebaseAuthException catch(e){
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch(e){
      throw TFirebaseException(e.code).message;
    } on FormatException catch(_){
      throw const TFormatException();
    } on PlatformException catch(e){
      throw TPlatformException(e.code).message;
    } catch(e){
      throw 'Something went wrong, try again later';
    }
  }
///Delete user - Remover user auth and firestore account
}
