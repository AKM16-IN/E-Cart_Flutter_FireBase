import 'package:ecart/features/authentication/screens/signin/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index){
    currentPageIndex.value = index;
  }
  void dotIndicationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }
  void nextPage(){
    if(currentPageIndex.value == 2){
      final deviceStorage = GetStorage();

      if(kDebugMode){
        print('============ Get Storage next =================');
        print(deviceStorage.read('is first'));
      }

      deviceStorage.write('is first', false);

      if(kDebugMode){
        print('============ Get Storage =================');
        print(deviceStorage.read('is first'));
      }

      Get.offAll(loginScreen());
    }
    else{
      int page = currentPageIndex.value + 1 ;
      pageController.jumpToPage(page);
    }
  }
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
    //Get.offAll(loginScreen());
  }
}