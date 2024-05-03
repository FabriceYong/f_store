import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:f_store/features/authentication/models/user_model/user_model.dart';
import 'package:f_store/utils/exceptions/firebase_exception.dart';
import 'package:f_store/utils/exceptions/format_exceptions.dart';
import 'package:f_store/utils/exceptions/platform_exceptions.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

/// Repository class for user-related operations.
class UserRepository extends GetxController {
  static UserRepository get instaance => Get.find();

  final FirebaseFirestore _database = FirebaseFirestore.instance;

  /// Function to save user to Firestore
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _database.collection('Users').doc(user.id).set(user.toJson());
    } on FirebaseException catch (e) {
      throw FFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const FFormatException();
    } on PlatformException catch (e) {
      throw FPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong, Please try again';
    }
  }
}
