import 'package:flutter/material.dart';
import 'package:my_project/src/core/resources/app_colors.dart';
import 'package:my_project/src/core/resources/text_styles.dart';
import 'package:pinput/pinput.dart';

@immutable
class ConfirmationCodeField extends StatefulWidget {
  const ConfirmationCodeField({
    required this.completed,
    required this.validator,
    required this.controller,
    this.error,
    super.key,
  });

  final ValueChanged<String> completed;
  final FormFieldValidator<String?> validator;
  final TextEditingController controller;

  final String? error;

  @override
  State<ConfirmationCodeField> createState() => _ConfirmationCodeFieldState();
}

class _ConfirmationCodeFieldState extends State<ConfirmationCodeField> {
  final _theme = PinTheme(
    width: 48,
    height: 56,
    textStyle: TextStyles.h1Medium,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      border: Border.all(color: AppColors.lightDivider),
      color: AppColors.white,
    ),
  );
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Pinput(
          length: 6,
          autofocus: true,
          controller: widget.controller,
          validator: widget.validator,
          onCompleted: widget.completed,
          defaultPinTheme: _theme,
          errorPinTheme: _theme.copyWith(
            decoration: _theme.decoration?.copyWith(
              border: Border.all(color: AppColors.mbBrand),
            ),
          ),
          focusedPinTheme: _theme.copyWith(
            decoration: _theme.decoration?.copyWith(
              border: Border.all(color: AppColors.mbBrand),
            ),
          ),
          errorText: widget.error,
          errorBuilder: (errorText, pin) => Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                '$errorText',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.mbBrand,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      );
}
