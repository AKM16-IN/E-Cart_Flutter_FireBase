import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecart/common/user/userModel.dart';
import 'package:ecart/utils/exceptions/firebase_exceptions.dart';
import 'package:ecart/utils/exceptions/format_exceptions.dart';
import 'package:ecart/utils/exceptions/platform_exceptions.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class userRepository extends GetxController{
  static userRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;


  ///fn to save usr data to firestore
  Future<void> saveUserRecord(UserModel user) async{
    try{
      await _db.collection("User").doc(user.id).set(user.toJson());
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
}