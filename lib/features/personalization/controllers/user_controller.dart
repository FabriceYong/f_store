import 'package:f_store/data/repositories/authentication_repository/authentication_repository.dart';
import 'package:f_store/data/repositories/user_repository/user_repository.dart';
import 'package:f_store/features/authentication/controllers/signup/network_manager.dart';
import 'package:f_store/features/authentication/models/user_model/user_model.dart';
import 'package:f_store/features/authentication/screens/login/login.dart';
import 'package:f_store/features/personalization/screens/profile_settings/widgets/re_authenticate_user_login_form.dart';
import 'package:f_store/utils/constants/image_strings.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:f_store/utils/loaders/loaders.dart';
import 'package:f_store/utils/popups/full_screen_loader.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();
  final userRepository = Get.put(UserRepository());

  Rx<UserModel> user = UserModel.empty().obs;
  final loading = false.obs;

  final hidePassword = true.obs;
  final verifyEmail = TextEditingController();
  final verifyPassword = TextEditingController();
  GlobalKey<FormState> reAuthFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    fetchUserRecord();
  }

  // Fetch user record
  Future<void> fetchUserRecord() async {
    try {
      loading.value = true;
      final user = await userRepository.fetchUserDetails();
      this.user(user);
      loading.value = false;
    } catch (e) {
      user(UserModel.empty());
    } finally {
      loading.value = false;
    }
  }

  /// Save user Record from any Registration provider
  Future<void> saveUserRecord(UserCredential? userCredentials) async {
    try {
      if (userCredentials != null) {
        // Convert name to First and Last Name
        final nameParts =
            UserModel.nameParts(userCredentials.user!.displayName ?? '');
        final username =
            UserModel.generateUsername(userCredentials.user!.displayName ?? '');

        // Map Data
        final user = UserModel(
          id: userCredentials.user!.uid,
          firstName: nameParts[0],
          lastName: nameParts.length > 1 ? nameParts.sublist(1).join(' ') : ' ',
          username: username,
          email: userCredentials.user!.email ?? '',
          phoneNumber: userCredentials.user!.phoneNumber ?? '',
          profilePicture: userCredentials.user!.photoURL ?? '',
        );

        // Save user data
        await userRepository.saveUserRecord(user);
      }
    } catch (e) {
      FLoaders.warningSnackBar(
          title: 'Data not saved',
          message:
              'Something went wrong while saving your information. You can re-save your data in your Profile');
    }
  }

  /// Delete Account Warning Popup
  void deleteAccountWarningPopup() {
    Get.defaultDialog(
        contentPadding: const EdgeInsets.all(FSizes.md),
        title: 'Delete Account!',
        middleText:
            'Are you sure you want to delete account permanently? This action is not reversible and all of your data will be removed permanently.',
        confirm: ElevatedButton(
          onPressed: () async => deleteUserAccount(),
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: FSizes.md),
              backgroundColor: Colors.red,
              side: const BorderSide(color: Colors.red)),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: FSizes.lg,
            ),
            child: Text('Delete'),
          ),
        ),
        cancel: OutlinedButton(
            style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    vertical: FSizes.md, horizontal: FSizes.lg)),
            onPressed: () => Navigator.of(Get.overlayContext!).pop(),
            child: const Text('Cancel')));
  }

  /// Delete User Account
  void deleteUserAccount() async {
    try {
      // Start Loader
      FFullSCreenLoader.openLoadingDialog('Processing...', FImages.processing);

      /// First Re_authenticate the user

      final provider = AuthenticationRepository.instance.authUser!.providerData
          .map((e) => e.providerId)
          .first;
      if (provider == 'google.com') {
        await AuthenticationRepository.instance.signInWithGoogle();
        await AuthenticationRepository.instance.deleteAccount();
        FFullSCreenLoader.stopLoading();
        Get.offAll(() => const LoginScreen());
      } else if (provider == 'password') {
        FFullSCreenLoader.stopLoading();
        Get.to(() => const ReAuthLoginForm());
      }
    } catch (e) {
      FFullSCreenLoader.stopLoading();
      FLoaders.warningSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  /// -- RE-AUTHENTICATE before deleting
  Future<void> reAuthenticateUserWithEmailAndPassword() async {
    try {
      FFullSCreenLoader.openLoadingDialog('Processing...', FImages.processing);

      // Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FFullSCreenLoader.stopLoading();
        return;
      }

      // Form validation
      if (!reAuthFormKey.currentState!.validate()) {
        FFullSCreenLoader.stopLoading();
        return;
      }

      // Make sure to delete the Firestore User data before deleting the FirebaseAuth User data otherwise Firestore won't be able to get the User UID to delete the user data
      await AuthenticationRepository.instance.reAuthenticateEmailAndPassword(
          verifyEmail.text.trim(),
          verifyPassword.text.trim()); // Firestore User data
      await AuthenticationRepository.instance
          .deleteAccount(); // FirebaseAuth User data

      FLoaders.errorSnackBar(
          title: 'Account Deleted',
          message:
              'Your user account has been permanently deleted, you can always re-create a new one.');
      FFullSCreenLoader.stopLoading();

      // Redirect to the Login screen
      Get.offAll(() => const LoginScreen());
    } catch (e) {
      FFullSCreenLoader.stopLoading();
      FLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
