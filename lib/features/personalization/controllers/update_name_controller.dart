import 'package:f_store/data/repositories/user_repository/user_repository.dart';
import 'package:f_store/features/authentication/controllers/signup/network_manager.dart';
import 'package:f_store/features/personalization/controllers/user_controller.dart';
import 'package:f_store/features/personalization/screens/profile_settings/profile_settings.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:f_store/utils/loaders/loaders.dart';
import 'package:f_store/utils/popups/full_screen_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userController = UserController.instance;
  final userRepository = UserRepository.instance;
  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();

  /// init user data when Home appears
  @override
  void onInit() {
    super.onInit();
    initializeNames();
  }

  /// Fetch User record
  Future<void> initializeNames() async {
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }

  Future<void> updateUserName() async {
    try {
      // Start Loading
      FFullSCreenLoader.openLoadingDialog(
          'We are updating your information. This will take just a few seconds...',
          FImages.processing);

      /// Check internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FFullSCreenLoader.stopLoading();
        return;
      }

      /// Form Validation
      if (!updateUserNameFormKey.currentState!.validate()) {
        FFullSCreenLoader.stopLoading();
        return;
      }

      //Update user's first and last names in the Firebase FireStore

      Map<String, dynamic> name = {
        'FirstName': firstName.text.trim(),
        'LastName': lastName.text.trim()
      };
      await userRepository.updateSingleField(name);

      // Update the Rx User value
      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = lastName.text.trim();

      // REmove Loader
      FFullSCreenLoader.stopLoading();

      // Show Success Message
      FLoaders.successSnackbar(
          title: 'Congratulations!', message: ' Your Name has been updated');

      // Move to previous screen
      Get.off(() => const UserProfileScreen());
    } catch (e) {
      FFullSCreenLoader.stopLoading();
      FLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
