import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:f_store/data/repositories/authentication_repository/authentication_repository.dart';
import 'package:f_store/features/authentication/models/user_model/user_model.dart';
import 'package:f_store/utils/exceptions/firebase_exception.dart';
import 'package:f_store/utils/exceptions/format_exceptions.dart';
import 'package:f_store/utils/exceptions/platform_exceptions.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

/// Repository class for user-related operations.
class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

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

  /// Function to fetch user details base on user ID
  Future<UserModel> fetchUserDetails() async {
    try {
      final documentSnapshot = await _database
          .collection('Users')
          .doc(AuthenticationRepository.instance.authUser!.uid)
          .get();
      if (documentSnapshot.exists) {
        return UserModel.fromSnapshot(documentSnapshot);
      } else {
        return UserModel.empty();
      }
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

  /// Function to update User Data in Firebase
  Future<void> updateUserDetails(UserModel updateUser) async {
    try {
      await _database
          .collection('Users')
          .doc(updateUser.id)
          .update(updateUser.toJson());
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

  /// Update any field in specific Users Collection
  Future<void> updateSingleField(Map<String, dynamic> json) async {
    try {
      await _database
          .collection('Users')
          .doc(AuthenticationRepository.instance.authUser!.uid)
          .update(json);
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

  /// Function to Remove User Data from Firestore
  Future<void> removeUserRecord(String userId) async {
    try {
      await _database.collection('Users').doc(userId).delete();
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
