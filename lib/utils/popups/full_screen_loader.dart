import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/popups/animation_loader.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

/// A utility for managing a full-screen loading dialog

class FFullSCreenLoader {
  /// Open a full-screen loading with a given text and animation
  /// This method doesn't return anything
  ///
  /// Parameters:
  ///  - text: The text to be displayed in the loading dialog.
  ///  - animation: The Lottie animation to be shown

  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context:
          Get.overlayContext!, // Use Get.overlayContext for overlay dialogs
      barrierDismissible:
          false, // The dialog can't be dismissed by tapping outside it
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: Theme.of(Get.context!).brightness == Brightness.dark
              ? FColors.dark
              : FColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const Gap(250),
              FAnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
      ),
    );
  }

  /// Stop the currently opened loading dialog.
  /// This method doesn't return anything
  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
