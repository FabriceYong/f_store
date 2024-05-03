import 'package:f_store/features/authentication/screens/login/login.dart';
import 'package:f_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:f_store/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:f_store/utils/exceptions/firebase_exception.dart';
import 'package:f_store/utils/exceptions/platform_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  /// called from the main.dart on app launch
  @override
  void onReady() {
    // Remove the native spalsh screen
    FlutterNativeSplash.remove();
    // Redirect to the appropriate screen
    screenRedirect();
  }

  /// Function to Show Relevant Screen
  screenRedirect() async {
    // Local Storage
    deviceStorage.writeIfNull('IsFirstTime', true);
    // Check if it's the first time launching the app
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() =>
            const OnBoardingScreen()); // Redirect to Login Screen if not the first time
  }

  /** ============================== Email & Password sign-in ================================*/
  /// [EmailAuthentication] - SignIn
  /// [EmailAuthentication] - Register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw FFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw FFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw FFormException();
    } on PlatformException catch (e) {
      throw FPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong, Please try again';
    }
  }
  

  /// [EmailVerification] - MAIL VERIFICATION
  /// [ReAuthentication] - ReAuthentication User
  /// [EmailAuthentication]- FORGOT PASSWORD

  /** ============================= Federated identity & social sign-in ======================== */
  ///[GoogleAuthentication] - GOOGLE
  ///[FacebookAuthentication] - FACEBOOK

  /** ============================= ./end Federated identity & social sign-in ==================== */
  /// [LogoutUser] - Valid for any authentication.
  /// [DeleteUser] - Remove user Auth and Firestore account.
}

class FFormException {
}
