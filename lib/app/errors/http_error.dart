import 'base_error.dart';

class HttpError extends BaseError {
  final int statusCode;

  HttpError({
    StackTrace? stackTrace,
    dynamic exception,
    String label = '',
    required String errorMessage,
    required this.statusCode,
  }) : super(
          stackTrace: stackTrace,
          exception: exception,
          label: 'HttpError-$label',
          errorMessage: errorMessage,
        );
}

class NoConnectionFoundError extends HttpError {
  NoConnectionFoundError({
    StackTrace? stackTrace,
    dynamic exception,
    String label = 'NoConnectionFoundError',
    String errorMessage =
        'No momento você está sem conexão com a internet. Tente mais tarde.',
    int statusCode = 404,
  }) : super(
          stackTrace: stackTrace,
          exception: exception,
          label: label,
          errorMessage: errorMessage,
          statusCode: statusCode,
        );
}

class RequestTimeoutError extends HttpError {
  RequestTimeoutError({
    StackTrace? stackTrace,
    dynamic exception,
    String label = 'RequestTimeoutError',
    required String errorMessage,
    required int statusCode,
  }) : super(
          stackTrace: stackTrace,
          exception: exception,
          label: label,
          errorMessage: errorMessage,
          statusCode: statusCode,
        );
}

class ResponseError extends HttpError {
  ResponseError({
    StackTrace? stackTrace,
    dynamic exception,
    String label = 'ResponseError',
    required String errorMessage,
    required int statusCode,
  }) : super(
          stackTrace: stackTrace,
          exception: exception,
          label: label,
          errorMessage: errorMessage,
          statusCode: statusCode,
        );
}
