import 'package:ecart/common/user/userModel.dart';
import 'package:ecart/data/repositries/userRepo.dart';
import 'package:ecart/utils/popups/loader.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class userController extends GetxController{
  static userController get instance => Get.find();

  final userrepository = Get.put(userRepository());

  //save user record from registration provider
  Future<void> saveUserRecord(UserCredential? userCredential) async{
    try{
      if(userCredential!=null){
        //convert name into first and last name
        final nameParts = UserModel.nameParts(userCredential.user!.displayName??"");
        final userName = UserModel.generateUsername(userCredential.user!.displayName??"");

        //map data
        final user = UserModel(id: userCredential.user!.uid, firstName: nameParts[0], lastName: nameParts.length>1? nameParts.sublist(1).join(' '): "", userName: userName, email: userCredential.user!.email ??"", phoneNumber: userCredential.user!. phoneNumber?? "" , profilePic: userCredential.user!.photoURL??"");

        //save user data
        await userrepository.saveUserRecord(user);
      }
    }catch(e){
      Tloader.warningSnackBar(title: 'Data not saved!',message: 'Something went wrong while saving your data. You can re-save it from profile tab.');
    }
  }
}