import 'package:flutter/material.dart';
import 'package:my_project/src/core/resources/app_colors.dart';

@immutable
class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({
    this.value,
    super.key,
  });
  final double? value;

  @override
  Widget build(BuildContext context) => CircularProgressIndicator(
        valueColor: const AlwaysStoppedAnimation<Color>(AppColors.mbBrand),
        value: value,
      );
}
