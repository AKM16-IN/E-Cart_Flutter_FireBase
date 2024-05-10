import 'package:get/get.dart';

class homeController extends GetxController{
  static homeController get instance => Get.find();

  final CarouselCurrentIndex = 0.obs;

  void updatePageIndicator(index){
    CarouselCurrentIndex.value = index;
  }
}