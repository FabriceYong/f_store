/// Exception class for handling various platform-related errors.
class FPlatformException implements Exception {
  final String code;

  FPlatformException(this.code);

  String get message {
    switch (code) {
      /// INVALID LOGIN CREDENTIALS EXCEPTION
      case 'INVALID_LOGIN_CREDENTIALS':
        return 'Invalid login credentials. Please double-check your information.';

      /// Too-many-requests Exception
      case 'too-many-requests':
        return 'Too many requests. Please try again later.';

      /// Invalid argument Exception
      case 'invalid-argument':
        return 'Invalid argument provided to the authentication method.';

      /// Invalid password Exception
      case 'invalid-password':
        return 'Invalid user credentials. Please verify and try again';

      /// Invalid Phone number Exception
      case 'invalid-phone-number':
        return 'The provided phone number is invalid.';

      /// Operation not allowed Exception
      case 'operation-not-allowed':
        return 'The sign-in provider is disabled for your Firebase project.';

      /// Session cookie expired Exception
      case 'session-cookie-expired':
        return 'The Firebase session cookie has expired. Please sign in again';

      /// UID already exists Exception
      case 'uid-already-exists':
        return 'The provided user ID is already in use by another user.';

      /// Sign-in failed Exception
      case 'sign-in-failed':
        return 'Sign-in failed. Please try again.';

      /// Network request failed Exception
      case 'network-request-failed':
        return 'Network request failed. Please check your internet connection.';

      /// Internal error Exception
      case 'internal-error':
        return 'Internal error. Please try again later.';

      /// Invalid verification code Exception
      case 'invalid-verification-code':
        return 'Invalid verification code. Please enter a valid code.';

      /// Invalid verification Id Exception
      case 'invalid-verification-id':
        return 'Invalid verification ID. Please request a new verification code.';

      /// Quota Exceeded Exception
      case 'quota-exceeded':
        return 'Quota exceeded. Please try again later.';

      // Add more cases as needed...
      default:
        return 'An unexpected platform error occurred. Please try again';
    }
  }
}
