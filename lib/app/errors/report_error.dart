import 'package:flutter/foundation.dart';

class ReportError {
  static void localErrorLog(
    StackTrace? stackTrace,
    dynamic exception,
    String? label,
  ) {
    if (stackTrace != null) {
      debugPrintStack(label: label, stackTrace: stackTrace);
    }
  }

  static void externalErrorLog(
    StackTrace? stackTrace,
    dynamic exception,
    String? label,
  ) {}
}
