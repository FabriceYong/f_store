import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// A widget for displaying on animated loading indicator
class FAnimationLoaderWidget extends StatelessWidget {
  /// Default constructor for the FAnimationLoadingWidget.
  ///
  /// parameters:
  /// - text: The text to be displayed below the animation
  ///  - animation: The path to the Lottie animation file.
  /// - showAction: Whether to show an action button below the text
  ///  - actionText: The text to be displayed on the action button.
  ///  - onActionPressed: Callback function to be executed when the action button is pressed.
  const FAnimationLoaderWidget({
    super.key,
    required this.text,
    required this.animation,
    this.showAction = false,
    this.actionText,
    this.onActionPressed,
  });

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(FSizes.defaultSpace),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              fit: BoxFit.contain,
              width: MediaQuery.of(context).size.width * .6,
              // height: MediaQuery.of(context).size.height * .8,
              image: AssetImage(
                animation,
              ),
            ),
            // Lottie.asset(animation,
            //     fit: BoxFit.contain,
            //     width: MediaQuery.of(context).size.width *
            //         .8), // Display Lottie animation
            const Gap(FSizes.defaultSpace * 2),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const Gap(FSizes.defaultSpace),
            showAction
                ? SizedBox(
                    width: 250,
                    child: OutlinedButton(
                      onPressed: onActionPressed,
                      style: OutlinedButton.styleFrom(
                          backgroundColor: FColors.dark),
                      child: Text(
                        actionText!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(color: FColors.light),
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
