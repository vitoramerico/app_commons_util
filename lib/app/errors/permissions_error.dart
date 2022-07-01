import 'base_error.dart';

class PermissionsError extends BaseError {
  PermissionsError({
    StackTrace? stackTrace,
    dynamic exception,
    String label = '',
    required String errorMessage,
  }) : super(
          stackTrace: stackTrace,
          exception: exception,
          label: 'PermissionsError-$label',
          errorMessage: errorMessage,
        );
}

class DeniedByParentalControlsError extends PermissionsError {
  DeniedByParentalControlsError(String errorMessage)
      : super(
          label: 'DeniedByParentalControlsError',
          errorMessage: errorMessage,
        );
}

class PermanentlyDeniedError extends PermissionsError {
  PermanentlyDeniedError(String errorMessage)
      : super(
          label: 'PermanentlyDeniedControlsError',
          errorMessage: errorMessage,
        );
}
