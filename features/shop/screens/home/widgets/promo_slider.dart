import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecart/common/widgets/custom%20Shapes/containers/circularContainer.dart';
import 'package:ecart/common/widgets/images/roundedImages.dart';
import 'package:ecart/features/shop/controllers/home_Controller.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(homeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => roundedImage(imageurl: url, applyImageRadius: true,),).toList(),
          options: CarouselOptions(
            viewportFraction: 1.1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),
        SizedBox(
          height: SSizes.m,
        ),
        Center(
          child: Obx(
              ()=> Row(
                mainAxisSize: MainAxisSize.min,
              children: [
                for (var i = 0; i < banners.length; i++)
                  CircularContainer(
                    backgroundColor: controller.CarouselCurrentIndex.value == i ? CColors.primary:CColors.grey,
                    height: 5,
                    width: 20,
                    margin: 2,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
