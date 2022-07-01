import 'base_error.dart';

class FileStorageError extends BaseError {
  FileStorageError({
    StackTrace? stackTrace,
    dynamic exception,
    String label = '',
    required String errorMessage,
  }) : super(
          stackTrace: stackTrace,
          exception: exception,
          label: 'FileStorageError-$label',
          errorMessage: errorMessage,
        );
}

class WriteFileError extends FileStorageError {
  WriteFileError(String errorMessage)
      : super(
          label: 'WriteFileError',
          errorMessage: errorMessage,
        );
}

class ReadFileError extends FileStorageError {
  ReadFileError(String errorMessage)
      : super(
          label: 'ReadFileError',
          errorMessage: errorMessage,
        );
}

class NotExistFileError extends FileStorageError {
  NotExistFileError(String errorMessage)
      : super(
          label: 'NotExistFileError',
          errorMessage: errorMessage,
        );
}

class DownloadFileError extends FileStorageError {
  DownloadFileError(String errorMessage)
      : super(
          label: 'DownloadFileError',
          errorMessage: errorMessage,
        );
}
