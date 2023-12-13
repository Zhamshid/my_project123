import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/src/core/extensions/context.dart';
import 'package:my_project/src/core/resources/app_colors.dart';
import 'package:my_project/src/core/resources/text_styles.dart';
import 'package:my_project/src/core/router/app_router.dart';
import 'package:my_project/src/core/utils/snackbar_util.dart';
import 'package:my_project/src/core/widgets/column_spacer.dart';
import 'package:my_project/src/core/widgets/custom_back_button.dart';
import 'package:my_project/src/core/widgets/loading.dart';
import 'package:my_project/src/core/widgets/overlay_progress.dart';
import 'package:my_project/src/core/widgets/timer/timer_controller.dart';
import 'package:my_project/src/feature/app/bloc/app_bloc.dart';
import 'package:my_project/src/feature/auth/cubit/verify_cubit/verify_cubit.dart';
import 'package:my_project/src/feature/auth/widget/widgets/confirmation_code_field.dart';
import 'package:my_project/src/feature/auth/widget/widgets/confirmation_code_timer.dart';

@RoutePage()
class OtpScreen extends StatefulWidget {
  final String phone;
  final String generatedCode;

  const OtpScreen(
      {super.key, required this.phone, required this.generatedCode});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _codeController = TextEditingController();

  final _expController = CountdownController(autoStart: true);

  late VerifyCubit verifyCubit;

  @override
  void initState() {
    verifyCubit = VerifyCubit(
      auth: context.dependencies.auth,
      userRepository: context.dependencies.userRepository,
      firebaseRepository: context.dependencies.firebaseRepository,
      preferences: context.dependencies.sharedPreferences,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<VerifyCubit>.value(
      value: verifyCubit,
      child: Scaffold(
        backgroundColor: AppColors.bgDefault,
        appBar: AppBar(
          leading: const CustomBackButton(),
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.bgDefault,
        ),
        body: BlocConsumer<VerifyCubit, VerifyState>(
          listener: (context, state) {
            state.whenOrNull(
              success: (isNew, isNameFilled, isProfileFilled, token) {
                log('isNewUser: $isNew');
                log('token: $token');
                if (isNew) {
                  context.router.replaceAll(
                    [
                      NameScreenRoute(
                        token: token,
                      )
                    ],
                  );
                } else {
                  if (!isNameFilled) {
                    context.router.replaceAll(
                      [
                        NameScreenRoute(
                          token: token,
                        )
                      ],
                    );
                  } else {
                    if (token.isNotEmpty) {
                      BlocProvider.of<AppBLoC>(context).add(
                        AppEvent.login(
                          token: token,
                        ),
                      );

                      context.router.replaceAll([const LauncherPageRoute()]);
                    }
                  }
                }
              },
              error: (e, isError) {
                log('OTP error => $e');
                SnackBarUtil.showSnackBar(
                  context: context,
                  message: e,
                  isError: isError,
                );
              },
            );
          },
          builder: (context, state) {
            return OverlayProgress(
              inAsyncCall: state.inProgress,
              progressIndicator: const Loading(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const ColumnSpacer(2.4),
                    Center(
                      child: Text(
                        context.localized.confirmation,
                        style: TextStyles.h2Bold,
                      ),
                    ),
                    const ColumnSpacer(.8),
                    Text(
                      context.localized.codeSentToNumber(widget.phone),
                      style: TextStyles.body16.copyWith(
                        color: AppColors.grayLight,
                        height: 22 / 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const ColumnSpacer(2.4),
                    ConfirmationCodeField(
                      completed: (code) {
                        /// Проверяем код

                        log('completed');
                        // context.router.replaceAll(
                        //   [
                        //     LauncherPageRoute(
                        //       children: [
                        //         HomeRouter(),
                        //       ],
                        //     ),
                        //   ],
                        // );

                        verifyCubit.login(
                          widget.generatedCode,
                          code,
                          widget.phone,
                        );
                      },
                      validator: (value) {
                        return null;
                      },
                      controller: _codeController,
                    ),
                    const ColumnSpacer(3.6),
                    VerificationCodeTimer(
                      controller: _expController,
                      onResend: () {
                        /// Отправляем код повторно

                        _codeController.clear();

                        _expController.restart();
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
