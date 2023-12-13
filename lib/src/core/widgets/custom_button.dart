import 'package:flutter/material.dart';
import 'package:my_project/src/core/resources/app_colors.dart';
import 'package:my_project/src/core/resources/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onPressed,
    required this.child,
    this.style,
    super.key,
  });

  final VoidCallback onPressed;
  final Widget child;

  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          style: style ?? CustomButtonStyle.primary,
          child: child,
        ),
      );
}

class CustomButtonStyle {
  CustomButtonStyle._();

  static ButtonStyle get primary => ElevatedButton.styleFrom(
        minimumSize: const Size(88, 50),
        backgroundColor: AppColors.brandAction,
        foregroundColor: Colors.white,
        disabledBackgroundColor: AppColors.brandAction.withOpacity(0.2),
        disabledForegroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        textStyle: TextStyles.bodyBold16.copyWith(color: AppColors.white),
      );

  static ButtonStyle get secondary => ElevatedButton.styleFrom(
        minimumSize: const Size(88, 50),
        backgroundColor: AppColors.bgContentDefault,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        textStyle: TextStyles.bodyBold16.copyWith(color: AppColors.brandAction),
      );
}
