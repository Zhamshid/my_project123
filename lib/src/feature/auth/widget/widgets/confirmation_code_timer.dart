import 'package:flutter/material.dart';
import 'package:my_project/src/core/extensions/context.dart';
import 'package:my_project/src/core/resources/app_colors.dart';
import 'package:my_project/src/core/resources/text_styles.dart';
import 'package:my_project/src/core/utils/format_util.dart';
import 'package:my_project/src/core/widgets/timer/countdown_timer.dart';
import 'package:my_project/src/core/widgets/timer/timer_controller.dart';

class VerificationCodeTimer extends StatelessWidget {
  const VerificationCodeTimer({
    required this.controller,
    this.onResend,
    super.key,
    this.onFinished,
  });
  final CountdownController controller;
  final VoidCallback? onFinished;
  final VoidCallback? onResend;

  @override
  Widget build(BuildContext context) => Countdown(
        seconds: 30,
        controller: controller,
        build: (context, duration) => Center(
          child: TextButton(
            onPressed: (duration.toInt() == 0) ? onResend : null,
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            child: Text(
              (duration.toInt() == 0)
                  ? context.localized.resendCode
                  : context.localized.resendSmsAfterSeconds(
                      FormatUtil.printDuration(duration.toInt()),
                    ),
              textAlign: TextAlign.center,
              style: (duration.toInt() == 0)
                  ? TextStyles.body16.copyWith(color: AppColors.mbBrand)
                  : TextStyles.regular14.copyWith(color: AppColors.grayLight),
            ),
          ),
        ),
        onFinished: onFinished,
      );
}
