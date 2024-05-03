/// Custom exception class to handle various format-related errors.
class FFormatException implements Exception {
  /// The associated error message
  final String message;

  /// Default constructor with a generic error message
  const FFormatException(
      [this.message =
          'An unexpected format error occurred. Please check your input']);

  /// Create a format exception from a specific error message
  factory FFormatException.fromMessage(String message) {
    return FFormatException(message);
  }

  /// Get The corresponding error message
  String get formattedMessage => message;

  /// Create a format exception from a specific error code.
  factory FFormatException.fromCode(String code) {
    switch (code) {
      /// Invalid email format Exception
      case 'invalid-email-format':
        return const FFormatException(
            'The email address format is invali. Please enter a valid email');

      /// Invalid phone number format Exception
      case 'invalid-phone-number-format':
        return const FFormatException(
            'The provided phone number format is invalid. Please enter a valid number.');

      /// Invalid date Format Exception
      case 'invalid-date-format':
        return const FFormatException(
            'The date format is invalid. Please enter a valid date.');

      /// Invalid URL format Exception
      case 'invalid-url-format':
        return const FFormatException(
            'The URL format is invalid. Please enter a valid URL.');

      /// Invalid credit card format Exception
      case 'invalid-credit-card-format':
        return const FFormatException(
            'The credit card format is invalid. Please enter a valid credit card number.');

      /// Invalid numeric format Exception
      case 'invalid-numeric-format':
        return const FFormatException(
            'The input should be a valid numeric format.');
      default:
        return const FFormatException();
    }
  }
}
