import 'base_error.dart';

class FirebaseError extends BaseError {
  FirebaseError({
    StackTrace? stackTrace,
    dynamic exception,
    String label = '',
    required String errorMessage,
  }) : super(
          stackTrace: stackTrace,
          exception: exception,
          label: 'FirebaseError-$label',
          errorMessage: errorMessage,
        );
}

class FirebaseRemoteConfigError extends FirebaseError {
  FirebaseRemoteConfigError({
    StackTrace? stackTrace,
    dynamic exception,
    String label = 'FirebaseRemoteConfigError',
    required String errorMessage,
  }) : super(
          stackTrace: stackTrace,
          exception: exception,
          label: label,
          errorMessage: errorMessage,
        );
}

class FirebaseAnalyticsError extends FirebaseError {
  FirebaseAnalyticsError({
    StackTrace? stackTrace,
    dynamic exception,
    String label = 'FirebaseAnalyticsError',
    required String errorMessage,
  }) : super(
          stackTrace: stackTrace,
          exception: exception,
          label: label,
          errorMessage: errorMessage,
        );
}

class FirebaseDynamicLinksError extends FirebaseError {
  FirebaseDynamicLinksError({
    StackTrace? stackTrace,
    dynamic exception,
    String label = 'FirebaseDynamicLinksError',
    required String errorMessage,
  }) : super(
          stackTrace: stackTrace,
          exception: exception,
          label: label,
          errorMessage: errorMessage,
        );
}
