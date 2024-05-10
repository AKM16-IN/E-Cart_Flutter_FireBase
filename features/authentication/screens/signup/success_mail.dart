import 'package:ecart/common/styles/spacing.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:ecart/utils/constants/text_strings.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessMail extends StatelessWidget {
  const SuccessMail({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});

  final String image, title, subtitle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: Spacings.paddingwithAppbar*2, child: Column(
          children: [
            Lottie.asset(image, width: MediaQuery.of(context).size.width*0.6,),
            SizedBox(height: SSizes.btwitem,),

            Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center ),
            SizedBox(height: SSizes.btwitem,),

            Text(subtitle, style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
            SizedBox(height: SSizes.btwsection,),

            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: onPressed, child: Text(TText.Continue)),),
          ],
        ),),
      ),
    );
  }
}
