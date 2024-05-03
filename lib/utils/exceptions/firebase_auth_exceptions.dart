/// Custom exception class to handle various Firebase authentication-related errors.
class FFirebaseAuthException implements Exception {
  /// The error code associated with the exception
  final String code;

  /// Constructor that takes an error code
  FFirebaseAuthException(this.code);

  /// Get the corresponding error message based on the error code.
  String get message {
    switch (code) {
      /// Email already in use Exception
      case 'email-already-in-use':
        return 'The email address is already registered. Please use a different email';

      /// Invalid Email Exception
      case 'invalid-email':
        return 'The email address provided is invalid. Please enter a valid email';

      /// Weak password Exception
      case 'weak-password':
        return 'The password is too weak. Please choose a stronger password';

      /// User disabled Exception
      case 'user-disabled':
        return 'This user account has been disabled. Please contact support for assistance';

      /// User not found Exception
      case 'user-not-found':
        return 'Invalid login details. Use not found';

      /// Wrong Password Exception
      case 'wrong-password':
        return 'Invalid user credentials. Please verify and try again';

      /// Invalid verification code
      case 'invalid-verification-code':
        return 'Invalid verification code. Please enter a valid code.';

      /// Invalid verification ID
      case 'invalid-verification-id':
        return 'Invalid verification Id. Please request a new verification code';

      /// Quota exceeded Exception
      case 'quota-exceeded':
        return 'Quota exceeded. Please try again later.';

      /// Email already exists Exception
      case 'email-already-exists':
        return 'The email address already exists. Please use a different email.';

      /// Provider already linked Exception
      case 'provider-already-linked':
        return 'The account is already linked with another provider.';

      /// Requires recent login Exception
      case 'requires-recent-login':
        return 'This operation is sensitive and requires recent authentication. Please login again.';

      /// Credential already in use Exception
      case 'credential-already-in-use':
        return 'This credential is already associated with a different user account.';

      /// User mismatch Exception
      case 'user-mismatch':
        return 'The supplied credential is already associated with a different user account.';

      /// Account already exists with different credential Exception
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email but different sign-in credentials.';

      /// Operation not allowed Exception
      case 'operation-not-allowed':
        return 'This operation is not allowed. Contact support for assistance';

      /// Expired action code Exception
      case 'expired-action-code':
        return 'The action code has expired. Please request a new action code';

      /// Missing action code Exception
      case 'missing-action-code':
        return 'The action code is missing. Please provide a valid action code.';

      /// User token expired Exception
      case 'user-token-expired':
        return 'The user\'s token has expired. and authentication is required. Please sign in again';

      /// User not found Exception
      case 'user-not-found':
        return 'No user found for the given email or UID';

      /// Invalid password Exception
      case 'wrong-password':
        return 'The password is invalid. Please check your password and try again';

      /// Invalid credential Exception
      case 'invalid-credential':
        return 'The supplied credential is malformed or has expired';

      /// User token revoked Exception
      case 'user-token-revoked':
        return 'The user\'s token has been revoked. Please sign in again';

      /// Invalid message payload exception
      case 'invalid-message-payload':
        return 'The email template verification message payload is invalid';

      /// Invalid sender Exception
      case 'invalid-sender':
        return 'The email template sender is invalid. Please verify the sender\'s email';

      /// Invalid recipient Email Exception
      case 'invalid-recipient-email':
        return 'The recipient email address is invalid. Please provide a valid recipient email.';

      /// Missing iframe start Exception
      case 'missing-iframe-start':
        return 'The email template is missing the iframe start tag.';

      /// Missing iframe end Exception
      case 'missing-iframe-end':
        return 'The email template is missing the iframe end tag.';

      /// Missing iframe src Exception
      case 'missing-iframe-src':
        return 'The email template is missing the iframe src attribute';

      /// Auth domain config required Exception
      case 'auth-domain-config-required':
        return 'The auth Domain configuration is required for the action code verification link';

      /// Missing app credential Exception
      case 'missing-app-credential':
        return 'The app credential is missing. Please provide valid app credential.';

      /// Invalid app credential Exception
      case 'invalid-app-credential':
        return 'The app credential is invalid. Please provide a valid app credential';

      /// Session cookie expired Exception
      case 'session-cookie-expired':
        return 'The Firebase session cookie has expired. Please sign in again';

      /// UID already exists Exception
      case 'uid-already-exists':
        'The provided user UID is already in use by another user.';

      /// Invalid cordova configuration Exception
      case 'invalid-cordova-configuration':
        return 'The provided Cordova configuration is invalid.';

      /// App deleted Exception
      case 'app-deleted':
        return 'This instance of FirebaseApp has been deleted.';

      /// User disabled Exception
      case 'user-disabled':
        return 'The use account has been disabled.';

      /// User token mismatch Exception
      case 'user-token-mismatch':
        return 'The provided user\'s token has a mismatch with the aunthenticated user\'s user ID';

      /// Web storage unsupported Exception
      case 'web-storage-unsupported':
        return 'Web storage is not supported or is disabled.';

      /// Invalid credential Exception
      case 'invalid-credential':
        return 'The supplied credential is invalid. Please check the credential and try again';

      /// App not authorized Exception
      case 'app-not-authorized':
        return 'The app is not authorized to use Firebase Authentication with the provided API key.';

      /// Keychain error
      case 'keychain-error':
        return 'A keychain error occured. Please check the keychain and try again';

      /// Internal error Exception
      case 'internal-error':
        return 'An internal authentication error occured. Please try again later.';

      /// INVALID LOGIN CREDENTIAL EXCEPTION
      case 'INVALID_LOGIN_CREDENTIAL':
        return ' Invalid login credentials.';

      default:
        return 'An unexpected authentication error occurred. Please try again.';
    }
    return 'An unknown error occurred. Please try again.';
  }
}
