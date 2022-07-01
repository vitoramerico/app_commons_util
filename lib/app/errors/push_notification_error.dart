import 'base_error.dart';

class PushNotificationError extends BaseError {
  PushNotificationError({
    StackTrace? stackTrace,
    dynamic exception,
    String label = '',
    required String errorMessage,
  }) : super(
          stackTrace: stackTrace,
          exception: exception,
          label: 'PushNotificationError-$label',
          errorMessage: errorMessage,
        );
}

class OnesignalError extends PushNotificationError {
  OnesignalError({
    StackTrace? stackTrace,
    dynamic exception,
    String label = 'OnesignalError',
    required String errorMessage,
  }) : super(
          stackTrace: stackTrace,
          exception: exception,
          label: label,
          errorMessage: errorMessage,
        );
}
