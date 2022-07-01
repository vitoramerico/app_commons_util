import 'base_error.dart';

class LocalStorageError extends BaseError {
  LocalStorageError({
    StackTrace? stackTrace,
    dynamic exception,
    String label = '',
    required String errorMessage,
  }) : super(
          stackTrace: stackTrace,
          exception: exception,
          label: 'LocalStorageError-$label',
          errorMessage: errorMessage,
        );
}

class StorageTypeNotValidError extends LocalStorageError {
  StorageTypeNotValidError(String errorMessage)
      : super(
          label: 'StorageTypeNotValidError',
          errorMessage: errorMessage,
        );
}
