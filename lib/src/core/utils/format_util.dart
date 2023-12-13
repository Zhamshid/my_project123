import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

@sealed
class FormatUtil {
  FormatUtil._();

  static final _emailMaskRegExp = RegExp(r'^(.)(.*?)([^@]?)(?=@[^@]+$)');

  static String printDuration(int seconds, {bool isMilliseconds = false}) {
    final duration = isMilliseconds
        ? Duration(milliseconds: seconds)
        : Duration(seconds: seconds);

    String twoDigits(int n) => n.toString().padLeft(2, '0');

    final twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    final twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));

    return '$twoDigitMinutes:$twoDigitSeconds';
  }

  static String maskEmail(
    String input, [
    int minFill = 4,
    String fillChar = '*',
  ]) {
    final hide = input.replaceFirstMapped(_emailMaskRegExp, (m) {
      final start = m.group(1);
      final middle = fillChar * max(minFill, m.group(2)!.length);
      final end = m.groupCount >= 3 ? m.group(3) : start;
      return '$start' '$middle' '$end';
    });

    final host = hide.substring(hide.indexOf('@'), hide.indexOf('.'));

    return hide.replaceFirst(host, fillChar * host.length);
  }
}
