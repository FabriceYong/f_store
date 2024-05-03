import 'package:f_store/data/repositories/authentication_repository/authentication_repository.dart';
import 'package:f_store/data/repositories/user_repository/user_repository.dart';
import 'package:f_store/features/authentication/controllers/signup/network_manager.dart';
import 'package:f_store/features/authentication/models/user_model/user_model.dart';
import 'package:f_store/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:f_store/utils/loaders/loaders.dart';
import 'package:f_store/utils/popups/full_screen_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs; // Observable for hiding/showing password
  final privacyPolicy =
      false.obs; // Observable for checking/ unchecking the checkbox
  final email = TextEditingController(); // controller for email input
  final password = TextEditingController(); // controller for password input
  final username = TextEditingController(); // controller for Username input
  final firstName = TextEditingController(); // controller for firstName input
  final lastName = TextEditingController(); // controller for lastName input
  final phoneNumber =
      TextEditingController(); // controller for phoneNumber input
  GlobalKey<FormState> signupFormKey =
      GlobalKey<FormState>(); // Form key for form validation

  /// Signup
  void signup() async {
    try {
      // Start Loading,
      FFullSCreenLoader.openLoadingDialog(
         'We are processing your information, this will take just a few seconds', FImages.processing);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FFullSCreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!signupFormKey.currentState!.validate()) {
        // Remove Loader
        FFullSCreenLoader.stopLoading();
        return;
      }

      // Privacy Policy
      if (!privacyPolicy.value) {
        FLoaders.warningSnackBar(
            title: 'Accept Privacy Policy',
            message:
                'Please read and accept our privacy policy so we can proceed to creating your account');
        return;
      }

      // Register user in the Firebase Authentication & save data in the Firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      // Save Authentication user data in the Firebase Firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      // Remove Loader
      FFullSCreenLoader.stopLoading();

      // Show Success Message
      FLoaders.successSnackbar(
          title: 'Congratulations!',
          message: 'Your account has been created! Verify email to continue');

      // Move to Verify Email Screen
      Get.to(() => VerifyEmail(email: email.text.trim(),));
    } catch (e) {
      // Remove Loader
      FFullSCreenLoader.stopLoading();
      // Show some Generic Error to the user
      FLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}
