import 'dart:io';

import 'package:flutter/foundation.dart';

import 'report_error.dart';

abstract class BaseError {
  final StackTrace? stackTrace;
  final dynamic exception;
  final String? label;
  final String errorMessage;

  BaseError({
    this.stackTrace,
    this.exception,
    this.label,
    required this.errorMessage,
  }) {
    //Ignora logs quando estiver rodando testes
    if (!kIsWeb && Platform.environment.containsKey('FLUTTER_TEST')) {
      return;
    }

    ReportError.localErrorLog(stackTrace, exception, label);
    ReportError.externalErrorLog(stackTrace, exception, label);
  }

  @override
  String toString() => errorMessage;
}

class UnknownError extends BaseError {
  UnknownError({
    StackTrace? stackTrace,
    dynamic exception,
    required String label,
    String errorMessage = 'Erro desconhecido',
  }) : super(
          stackTrace: stackTrace,
          exception: exception,
          label: 'UnknownError-$label',
          errorMessage: errorMessage,
        );
}
