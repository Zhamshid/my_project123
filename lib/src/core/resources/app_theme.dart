import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project/src/core/resources/app_colors.dart';
import 'package:my_project/src/core/resources/fonts.gen.dart';
import 'package:my_project/src/core/resources/text_styles.dart';

abstract class AppTheme {
  AppTheme._();

  /// App theme mode
  static ThemeData get light => ThemeData(
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppColors.mbBrand,
        ),
        indicatorColor: AppColors.mbBrand,
        scaffoldBackgroundColor: AppColors.white,
        primaryColor: AppColors.mbBrand,
        fontFamily: FontFamily.roboto,
        cupertinoOverrideTheme: const CupertinoThemeData(
          primaryColor: AppColors.mbBrand,
          scaffoldBackgroundColor: AppColors.white,
        ),
        tabBarTheme: const TabBarTheme(
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(width: 2),
            // insets: EdgeInsets.symmetric(horizontal: 45),
          ),
          indicatorSize: TabBarIndicatorSize.tab,
          // unselectedLabelColor: AppColors.text,
          // labelColor: AppColors.text,
          labelStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            // color: AppColors.text,
            fontFamily: FontFamily.roboto,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 16,
            // color: AppColors.text,
            fontFamily: FontFamily.roboto,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.white,
          foregroundColor: AppColors.black,
          elevation: 0,
          centerTitle: true,
          titleSpacing: 0,
          titleTextStyle: TextStyles.bodyBold16,
          iconTheme: IconThemeData(
            color: AppColors.black,
            size: 24,
          ),
          actionsIconTheme: IconThemeData(
            color: AppColors.black,
            size: 24,
          ),
        ),
        textTheme: const TextTheme(
          /// Screen Headers
          displayLarge: TextStyle(),

          /// Input Styles,
          titleMedium: TextStyles.body16,
        ).apply(
          bodyColor: AppColors.black,
          fontFamily: FontFamily.roboto,
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColors.black,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.mbBrand,
            minimumSize: Size.zero,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          floatingLabelStyle: TextStyles.subRegulra12.copyWith(
            color: AppColors.grayLight,
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(8),
          ),
          errorStyle: const TextStyle(height: 0.01, fontSize: 0),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(8),
          ),
          labelStyle: TextStyles.body16.copyWith(
            color: AppColors.grayLight,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        dividerTheme: const DividerThemeData(
          thickness: 1,
          color: AppColors.lightDivider,
        ),
      );
}
