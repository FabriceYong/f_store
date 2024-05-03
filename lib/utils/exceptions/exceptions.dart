/// Exception class for handling various errors
class FExceptions implements Exception {
  /// The associated error message
  final String message;
  const FExceptions(
      [this.message = 'An unexpected error occurred. Please try again.']);

  /// Create an authentication exception from a Firebase Authentication exception code.
  factory FExceptions.fromCode(String code) {
    switch (code) {
      /// email already registered
      case 'email-already-in-use':
        return const FExceptions(
            'The email address is already registered. Please use a different email.');

      /// Invalid email exception
      case 'invalid-email':
        return const FExceptions(
            'The email address provided is invalid. Please enter a valid email');

      /// Weak password exception
      case 'weak-password':
        return const FExceptions(
            'The password is too weak. Please choose a stronger password');

      /// User disabled exception
      case 'user-disabled':
        return const FExceptions(
            'This user account has been disabled. Please contact support for assistance');

      /// User not found exception
      case 'user-not-found':
        return const FExceptions('Invalid login details. User not found.');

      /// Wrong password Exception
      case 'wrong-password':
        return const FExceptions(
            'Invalid user credentials, Please verify and retry again');

      /// INVALID LOGIN CREDENTIALS
      case 'INVALID_LOGIN_CREDENTIALS':
        return const FExceptions(
            'Invalid login credentials. Please double-check your information and try again');

      /// Too many requests exception
      case 'too-many-requests':
        return const FExceptions('Too many requests. Please try again later');

      /// Invalid arguments exception
      case 'invalid-arguments':
        return const FExceptions(
            'Invalid arguments provided to the authentication method.');

      /// Invalid Password Exception
      case 'invalid-password':
        return const FExceptions('Incorrect password. Please try again');

      /// Invalid phone Number
      case 'invalid-phone-number':
        return const FExceptions('The provided phone number is invalid.');

      /// Operation not allowed
      case 'operation-not-allowed':
        return const FExceptions(
            'The sign-in provider is disabled for your Firebase project.');

      /// Session cookie expired exception
      case 'session-cookie-expired':
        return const FExceptions(
            'The firebase session cookie has expired. Please sign in again.');

      /// UID already expired exception
      case 'uid-already-exist':
        return const FExceptions(
            'The provided user ID is already in use by another user');

      /// Sign-in Failed exception
      case 'sign_in_failed':
        return const FExceptions('Sign-in failed. Please try again');

      /// Network request failed exception
      case 'network-request-failed':
        return const FExceptions(
            'Network request failed. Please check your internet connection');

      /// Internal error exception
      case 'internal-error':
        return const FExceptions('Internal error. Please try again later.');

      /// Invalid verification code
      case 'invalid-verification-code':
        return const FExceptions(
            'Invalid verification code. Please enter a valid code');

      /// Invalid verification ID
      case 'invalid-verification-id':
        return const FExceptions(
            'Invalid verification ID. Please request a new verification code.');

      /// Quota exceeded Exception
      case 'quota-exceeded':
        return const FExceptions('Quota exceeded. Please try again later.');

      default:
        return const FExceptions();
    }
  }
}
