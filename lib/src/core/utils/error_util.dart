// ignore_for_file: long-parameter-list,avoid-ignoring-return-values
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:l/l.dart';

enum ErrorDestination { firebase, sentry }

@sealed
class ErrorUtil {
  ErrorUtil._();

  static Future<void> logError(
    Object exception, {
    StackTrace? stackTrace,
    String? hint,
    ErrorDestination destination = ErrorDestination.sentry,
  }) async {
    try {
      if (kDebugMode) {
        return;
      }
      if (exception is String) {
        return logMessage(
          exception,
          stackTrace: stackTrace,
          hint: hint,
          warning: true,
          destination: destination,
        );
      }
      l.e(exception, stackTrace ?? StackTrace.current);
      // if (destination == ErrorDestination.sentry) {
      //   await Sentry.captureException(
      //     exception,
      //     stackTrace: stackTrace ?? StackTrace.current,
      //     hint: hint,
      //   );
      // } else {
      // TODO: uncomment
      // await FirebaseCrashlytics.instance.recordError(
      //   exception,
      //   stackTrace ?? StackTrace.current,
      //   reason: hint,
      // );
      // }
    } on Object catch (error, stackTrace) {
      l.e('Exception occured "$error" in ErrorUtil.logError', stackTrace);
    }
  }

  static Future<void> onFlutterError(FlutterErrorDetails details) async {
    // await FirebaseCrashlytics.instance.recordFlutterError(details);
  }

  static Future<void> logMessage(
    String message, {
    StackTrace? stackTrace,
    String? hint,
    bool warning = false,
    List<String>? params,
    ErrorDestination destination = ErrorDestination.sentry,
  }) async {
    try {
      l.e(message, stackTrace);
      // if (destination == ErrorDestination.sentry) {
      //   await Sentry.captureMessage(message, hint: hint, params: params);
      // } else {
      // TODO: uncomment
      // await FirebaseCrashlytics.instance.log(message);
      // }
    } on Object catch (error, stackTrace) {
      l.e('Exception occured "$error" in ErrorUtil.logMessage', stackTrace);
    }
  }
}
