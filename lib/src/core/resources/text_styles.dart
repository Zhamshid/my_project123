import 'package:flutter/material.dart';
import 'package:my_project/src/core/resources/app_colors.dart';
import 'package:my_project/src/core/resources/fonts.gen.dart';

abstract class TextStyles {
  TextStyles._();

  static const TextStyle largeTitle = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    fontFamily: FontFamily.roboto,
  );

  static const TextStyle h2Bold = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
    fontFamily: FontFamily.roboto,
  );

  static const TextStyle h1Medium = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    fontFamily: FontFamily.roboto,
  );

  static const TextStyle h1Bold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
    fontFamily: FontFamily.roboto,
  );

  static const TextStyle body16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    fontFamily: FontFamily.roboto,
  );

  static const TextStyle bodyBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    fontFamily: FontFamily.roboto,
  );

  static const TextStyle regular14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    fontFamily: FontFamily.roboto,
  );

  static const TextStyle semiBold14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    fontFamily: FontFamily.roboto,
  );
  static const TextStyle bold14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    fontFamily: FontFamily.roboto,
  );

  static const TextStyle subRegulra12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    fontFamily: FontFamily.roboto,
  );

  static const TextStyle regulra10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    fontFamily: FontFamily.roboto,
  );
}
