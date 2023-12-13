// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:l/l.dart';
import 'package:my_project/src/core/utils/error_util.dart';
import 'package:stack_trace/stack_trace.dart';

extension on DateTime {
  /// Transforms DateTime to String with format: 00:00:00
  String get formatted =>
      [hour, minute, second].map(Logger._timeFormat).join(':');
}

extension on LogLevel {
  /// Emoji for each log level
  String get emoji => maybeWhen(
        shout: () => '❗️',
        error: () => '🚫',
        warning: () => '⚠️',
        info: () => '💡',
        debug: () => '🐞',
        orElse: () => '📌',
      );
}

mixin Logger {
  /// How much digits there should be in the time
  static const _timeLength = 2;

  /// Log options for the [L] library
  static const _logOptions = LogOptions(
    printColors: false,
    messageFormatting: _formatLoggerMessage,
  );

  /// Formats the time to have [_timeLength] digits
  static String _timeFormat(int input) =>
      input.toString().padLeft(_timeLength, '0');

  /// Formats the message for the [L] library
  static String _formatLoggerMessage(
    Object message,
    LogLevel logLevel,
    DateTime now,
  ) =>
      '${logLevel.emoji} ${now.formatted} | $message';

  /// Formats the error message for the [L] library
  ///
  /// If [stackTrace] is null then we get the stack trace from the
  /// [StackTrace.current].
  ///
  /// Builds error through [StringBuffer] and returns it.
  static String _formatError(
    String type,
    String error,
    StackTrace? stackTrace,
  ) {
    final trace = stackTrace ?? StackTrace.current;

    final buffer = StringBuffer(type)
      ..write(' error: ')
      ..writeln(error)
      ..writeln('Stack trace:')
      ..write(Trace.from(trace).terse);

    return buffer.toString();
  }

  /// Helper static method to log a zone error
  ///
  /// later, it would be send to the sentry
  static Future<void> logZoneError(
    Object e,
    StackTrace s,
  ) async {
    l.e(_formatError('Top-level', e.toString(), s), s);
    await ErrorUtil.logError(e, stackTrace: s);
  }

  /// Helper static method to log a flutter error [FlutterError.onError]
  /// like widget overflow, etc.
  ///
  /// it isn't sent to the sentry
  ///
  ///
  static Future<void> logFlutterError(
    FlutterErrorDetails details,
  ) async {
    final stack = details.stack;
    l.e(_formatError('Flutter', details.exceptionAsString(), stack), stack);
    await ErrorUtil.onFlutterError(details);
  }

  /// run in a zone
  static T runLogging<T>(T Function() body) => l.capture(body, _logOptions);
}
