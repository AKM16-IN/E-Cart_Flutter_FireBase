import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class animationLoaderWidget extends StatelessWidget {
  animationLoaderWidget({
    super.key,
    required this.text,
    required this.animation,
    this.actionText,
    this.showAction = false,
    this.onActionPressed,
  });

  final String text, animation;
  final String? actionText;
  final bool showAction;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Lottie.asset(animation,
              width: MediaQuery.of(context).size.width * 0.8),
          SizedBox(
            height: SSizes.dspace,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: SSizes.dspace,
          ),
          showAction
              ? SizedBox(
                  width: 250,
                  child: OutlinedButton(
                    onPressed: onActionPressed,
                    style:
                        OutlinedButton.styleFrom(backgroundColor: CColors.dark),
                    child: Text(
                      actionText!,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: CColors.light),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
