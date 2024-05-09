import 'package:f_store/data/repositories/authentication_repository/authentication_repository.dart';
import 'package:f_store/features/authentication/controllers/signup/network_manager.dart';
import 'package:f_store/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:f_store/utils/loaders/loaders.dart';
import 'package:f_store/utils/popups/full_screen_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  static ForgotPasswordController get instance => Get.find();

  final email = TextEditingController();
  GlobalKey<FormState> forgotPasswordFormKey = GlobalKey<FormState>();

  sendPasswordResetEmail() async {
    try {
      // Start Loading
      FFullSCreenLoader.openLoadingDialog(
          'Processing your request, Please wait...', FImages.processing);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FFullSCreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!forgotPasswordFormKey.currentState!.validate()) {
        FFullSCreenLoader.stopLoading();
        return;
      }

      // Send Email to Reset Password
      await AuthenticationRepository.instance
          .sendPasswordResetEmail(email.text.trim());

      // Remove Loader
      FFullSCreenLoader.stopLoading();

      // Show Success Screen
      FLoaders.successSnackbar(
          title: 'Email Sent',
          message: 'Email link sent to Reset your Password'.tr);

      // Redirect
      Get.to(() => ResetPasswordScreen(email: email.text.trim()));
    } catch (e) {
      FLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
      FFullSCreenLoader.stopLoading();
    }
  }

  // Password Reset Email
  resendPasswordResetEmail(String email) async {
    try {
      // Start Loading
      FFullSCreenLoader.openLoadingDialog(
          'Processing your request, Please wait...', FImages.processing);

      //Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FFullSCreenLoader.stopLoading();
        return;
      }

      // Send Email to reset Password
      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      // Remove Loader
      FFullSCreenLoader.stopLoading();

      // Show Success Screen
      FLoaders.successSnackbar(
          title: 'Email sent',
          message: 'Email link sent to reset your password');
    } catch (e) {
      FLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
      FFullSCreenLoader.stopLoading();
    }
  }
}
