

import 'package:ecart/features/authentication/controller/onboarding_controller.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/constants/text_strings.dart';
import 'package:ecart/utils/device/device_utility.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: IImageString.onboarding1,
                title: TText.onboardtitle1,
                subtitle: TText.onboardsubtitle1,
              ),
              OnBoardingPage(
                image: IImageString.onboarding2,
                title: TText.onboardtitle2,
                subtitle: TText.onboardsubtitle2,
              ),
              OnBoardingPage(
                image: IImageString.onboarding3,
                title: TText.onboardtitle3,
                subtitle: TText.onboardsubtitle3,
              ),
            ],
          ),
          SkipButton(),
          DotNavigation(),
          NextButton(),
        ],
      ),
    );
  }
}

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = Helpers.isDarkMode(context);
    return Positioned(
        bottom: DeviceUtils.getBottomNavigationbarHeight(),
        right: SSizes.dspace,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: dark ? CColors.primary : Colors.black
          ),
          onPressed: () {
            OnBoardingController.instance.nextPage();
          },
          child: Icon(
            Icons.keyboard_double_arrow_right,
          ),
        ),);
  }
}

class DotNavigation extends StatelessWidget {
  const DotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = Helpers.isDarkMode(context);

    final controller = OnBoardingController.instance;
    return Positioned(
        bottom: DeviceUtils.getBottomNavigationbarHeight(),
        left: SSizes.dspace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotIndicationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? CColors.light : CColors.dark,
              dotHeight: 6),
        ),);
  }
}

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: DeviceUtils.getAppbarHeight(),
        right: SSizes.dspace,
        child: TextButton(onPressed: () {
          OnBoardingController.instance.skipPage();
        }, child: Text('Skip')));
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SSizes.dspace),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            width: Helpers.ScreenWidth() * 0.8,
            height: Helpers.ScreenHeight() * 0.6,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: SSizes.btwitem),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
