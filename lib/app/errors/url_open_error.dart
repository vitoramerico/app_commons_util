import 'base_error.dart';

class UrlOpenError extends BaseError {
  UrlOpenError({
    StackTrace? stackTrace,
    dynamic exception,
    String label = '',
    required String errorMessage,
  }) : super(
          stackTrace: stackTrace,
          exception: exception,
          label: 'UrlOpenError-$label',
          errorMessage: errorMessage,
        );
}
