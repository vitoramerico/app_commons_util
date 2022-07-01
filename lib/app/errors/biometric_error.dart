import 'base_error.dart';

class BiometricError extends BaseError {
  BiometricError({
    StackTrace? stackTrace,
    dynamic exception,
    String label = '',
    required String errorMessage,
  }) : super(
          stackTrace: stackTrace,
          exception: exception,
          label: 'BiometricError-$label',
          errorMessage: errorMessage,
        );
}

class AuthenticateError extends BiometricError {
  AuthenticateError({
    StackTrace? stackTrace,
    dynamic exception,
    String label = 'AuthenticateError',
    required String errorMessage,
  }) : super(
          stackTrace: stackTrace,
          exception: exception,
          label: label,
          errorMessage: errorMessage,
        );
}

class CheckError extends BiometricError {
  CheckError({
    StackTrace? stackTrace,
    dynamic exception,
    String label = 'CheckError',
    required String errorMessage,
  }) : super(
          stackTrace: stackTrace,
          exception: exception,
          label: label,
          errorMessage: errorMessage,
        );
}

class GetAvailableError extends BiometricError {
  GetAvailableError({
    StackTrace? stackTrace,
    dynamic exception,
    String label = 'GetAvailableError',
    required String errorMessage,
  }) : super(
          stackTrace: stackTrace,
          exception: exception,
          label: label,
          errorMessage: errorMessage,
        );
}
