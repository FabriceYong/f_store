/// Custom exception class to handle various Firebase-related errors
class FFirebaseException implements Exception {
  /// The error code associated with the exception
  final String code;

  /// Constructor that takes an error code.
  FFirebaseException(this.code);

  /// Get the corresponding error message based on the error code.
  String get message {
    switch (code) {
      /// Unknown error Exception
      case 'unknown':
        return 'An unknown Firebase error occurred. Please try gain.';

      /// Invalid custom Token Exception
      case 'invalid-custom-token':
        return 'The custom token format is incorrect. Please check your custom token.';

      /// Custom Token mismatch Exception
      case 'custom-token-mismatch':
        return 'The custom token corresponds to a different audience.';

      /// User disabled Exception
      case 'user-disabled':
        return 'The user account has been disabled.';

      /// User not found Exception
      case 'user-not-found':
        return 'No user found for the given email or UID.';

      /// Invalid email Exception
      case 'invalid-email':
        return 'The email address provided is invalid. Please enter a valid email';

      /// Email already in use Exception
      case 'email-already-in-use':
        return 'The email address is already registered. Please use a different email.';

      /// Wrong password Exception
      case 'wrong-password':
        return 'Invalid user credentials. please verify and try again';

      /// Weak password Exception
      case 'weak-password':
        return 'The password is too weak. Please chose a stronger password.';

      /// Provider already linked Exception
      case 'provider-already-linked':
        return 'The account is already linked with another provider.';

      /// Operation not allowed Exception
      case 'operation-not-allowed':
        return 'This operation is not allowed. Contact support for assistance';

      /// Invalid credential Exception
      case 'invalid-credential':
        return 'The supplied credential is malformed or has expired.';

      /// Invalid verification code Exception
      case 'invalid-verification':
        return 'Invalid verification code. Please enter a valid code.';

      /// Invalid verification ID
      case 'invalid-verification-id':
        return 'Invalid verification ID. Please request  a new verification code';

      /// Captcha check failed Exception
      case 'captcha-check-failed':
        return 'The reCAPTCHA response is invalid. Please try again.';

      /// App not authorized Exception
      case 'app-not-authorized':
        return 'The app is not authorized to use Firebase Authentication with the provided API key.';

      /// Keychain Error Exception
      case 'keychain-error':
        return 'A keychain error occurred. Please check the keychain and try again.';

      /// Internal Error Exception
      case 'internal-error':
        return 'An internal authentication error occurred. Please try again later';

      /// Invalid app Credential Exception
      case 'invalid-app-credential':
        return 'The app credential is invalid. Please provide a valid app credential.';

      /// User mismatch Exception
      case 'user-mismatch':
        return 'The supplied credentials do not correspond to the previously signed-in user.';

      /// Requires recent login Exception
      case 'requires-recent-login':
        return 'This operation is sensitive and requires recent authentication. Please login again';

      /// Quota Exceeded Exception
      case 'quota-exceeded':
        return 'Quota exceeded. Please try again later.';

      /// Account already exists with different credentials Exception
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email but different sign-in credentials.';

      /// Missing iframe start Exception
      case 'missing-iframe-start':
        return 'The email template is missing the ifreame start tag.';

      /// Missing iframe end Exception
      case 'missing-iframe-end':
        return 'The email template is missing the iframe end tag.';

      /// Missing iframe end Exception
      case 'missing-iframe-src':
        return 'The email template is missing the iframe src attribute.';

      /// Auth-domain-config-required Exception
      case 'auth-domain-config-required':
        return 'The authDomain configuration is required for the action code verification link.';

      /// Missing app credential Exception
      case 'missing-app-credential':
        return 'The app credential is missing. Please provide valid app credentials.';

      /// Session cookie expired Exception
      case 'session-cookie-expired':
        return 'The Firebase session cookie has expired. Please sign in again.';

      /// UID already exists Exception
      case 'uid-already-exists':
        return 'The provided user Id is already in use by another user.';

      /// Web storage unsupported Exception
      case 'web-storage-unsupported':
        return 'Web storage is not supported or is disabled.';

      ///App deleted Exception
      case 'app-deleted':
        return 'This instance of FirebaseApp has been deleted.';

      /// User token mismatch Exception
      case 'user-token-mismatch':
        return 'The provided user\'s token has a mismatch with the authenticated user\'s user ID';

      /// Invalid message payload Exception
      case 'invalid-message-payload':
        return 'The email template verification message payload is invalid';

      /// Invalid Sender Exception
      case 'invalid-sender':
        return 'The email template sender is invalid. Please verify the sender\'s email';

      /// Invalid recipient Email Exception
      case 'invalid-recipient-email':
        return 'The recipient email address is invalid. Please provide a valid recipient email';

      /// Missing action code Exception
      case 'missing-action-code':
        return 'The action code is missing. Please provide a valid action code.';

      /// User token Expired
      case 'user-token-expired':
        return 'The user\'s token expired, and authentication is required. Please sign in again';

      /// INVALID LOGIN CREDENTIALS Exception
      case 'INVALID_LOGIN_CREDENTIALS':
        return 'Invalid login credentials.';

      /// Expired action code Exception
      case 'expired-action-code':
        return 'The action code has expired, Please request a new action code';

      /// Credential already in use Exception
      case 'credential-already-in-use':
        return 'This credential is already associated with a different user account.';
      default:
        return 'An unexpected Firebase error occurred. Please try again.';
    }
  }
}
