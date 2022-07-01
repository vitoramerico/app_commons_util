import 'base_error.dart';

class ShareDataError extends BaseError {
  ShareDataError({
    StackTrace? stackTrace,
    dynamic exception,
    String label = '',
    required String errorMessage,
  }) : super(
          stackTrace: stackTrace,
          exception: exception,
          label: 'ShareDataError-$label',
          errorMessage: errorMessage,
        );
}

class ShareDataTextError extends ShareDataError {
  ShareDataTextError(StackTrace? stackTrace, String errorMessage)
      : super(
          label: 'ShareDataTextError',
          stackTrace: stackTrace,
          errorMessage: errorMessage,
        );
}

class ShareDataFileError extends ShareDataError {
  ShareDataFileError(StackTrace? stackTrace, String errorMessage)
      : super(
          label: 'ShareDataFileError',
          stackTrace: stackTrace,
          errorMessage: errorMessage,
        );
}
