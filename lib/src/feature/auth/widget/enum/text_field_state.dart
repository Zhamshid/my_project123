import 'package:flutter/material.dart';
import 'package:my_project/src/core/extensions/object.dart';
import 'package:my_project/src/core/resources/app_colors.dart';

enum TextFieldState with Compare<TextFieldState> {
  focused(AppColors.brandAction),
  error(AppColors.mbBrand),
  enabled(AppColors.lightDivider);

  const TextFieldState(this.color);

  final Color color;

  /// Pattern Matching
  T when<T>({
    required T Function() focused,
    required T Function() error,
    required T Function() enabled,
  }) {
    switch (this) {
      case TextFieldState.focused:
        return focused();
      case TextFieldState.enabled:
        return enabled();
      case TextFieldState.error:
        return error();
    }
  }

  T maybeWhen<T>({
    required T Function() orElse,
    T Function()? focused,
    T Function()? error,
    T Function()? enabled,
  }) =>
      when(
        focused: focused ?? orElse,
        enabled: enabled ?? orElse,
        error: error ?? orElse,
      );

  @override
  int compareTo(TextFieldState other) => index.compareTo(other.index);
}
