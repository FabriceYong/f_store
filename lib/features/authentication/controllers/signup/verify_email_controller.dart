import 'dart:async';

import 'package:f_store/common/widgets/success_screen/success_screen.dart';
import 'package:f_store/data/repositories/authentication_repository/authentication_repository.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:f_store/utils/constants/text_strings.dart';
import 'package:f_store/utils/loaders/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  /// Send Email Whenever Verify Screen appears & and set Timer for auto redirect
  @override
  void onInit() {
    super.onInit();
    sendEmailVerification();
    checkEmailVerifiedStatus();
    setTimeForAutoRedirect();
  }

  /// Send Email Verification link
  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      FLoaders.successSnackbar(
          title: 'Email sent',
          message: 'Please check your inbox and verify your email.');
    } catch (e) {
      FLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  /// Timer to automatically redirect on Email Verification
  setTimeForAutoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      if (FirebaseAuth.instance.currentUser?.emailVerified ?? false) {
        Get.off(() => SuccessScreen(
            image: FImages.successful,
            title: FTexts.yourAccountCreatedTitle,
            subTitle: FTexts.yourAccountCreatedSubTitle,
            onPressed: () =>
                AuthenticationRepository.instance.screenRedirect()));
      timer.cancel();
      }
    });
  }

  /// Manually Check if Email Verified
  checkEmailVerifiedStatus() async {
    if (FirebaseAuth.instance.currentUser != null &&
        FirebaseAuth.instance.currentUser!.emailVerified) {
      Get.off(() => SuccessScreen(
          image: FImages.successful,
          title: FTexts.yourAccountCreatedTitle,
          subTitle: FTexts.yourAccountCreatedSubTitle,
          onPressed: () => AuthenticationRepository.instance.screenRedirect()));
    }
  }
}
