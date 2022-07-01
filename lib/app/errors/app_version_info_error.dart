import 'base_error.dart';

class AppVersionInfoError extends BaseError {
  AppVersionInfoError({
    StackTrace? stackTrace,
    dynamic exception,
    String label = '',
    required String errorMessage,
  }) : super(
          stackTrace: stackTrace,
          exception: exception,
          label: 'AppVersionInfoError-$label',
          errorMessage: errorMessage,
        );
}
