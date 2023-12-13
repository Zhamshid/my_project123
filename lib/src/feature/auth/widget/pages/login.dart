import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/src/core/extensions/context.dart';
import 'package:my_project/src/core/resources/app_colors.dart';
import 'package:my_project/src/core/resources/text_styles.dart';
import 'package:my_project/src/core/router/app_router.dart';
import 'package:my_project/src/core/utils/snackbar_util.dart';
import 'package:my_project/src/core/widgets/column_spacer.dart';
import 'package:my_project/src/core/widgets/custom_button.dart';
import 'package:my_project/src/core/widgets/custom_text_field.dart';
import 'package:my_project/src/core/widgets/loading.dart';
import 'package:my_project/src/core/widgets/overlay_progress.dart';
import 'package:my_project/src/core/widgets/row_spacer.dart';
import 'package:my_project/src/feature/auth/cubit/login_cubit/check_phone_cubit.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // final _passwordController = TextEditingController();

  late final CheckPhoneCubit _checkPhoneCubit;

  /// Маска для номера телефона
  final _phoneController = MaskedTextController(mask: '000 000 0000');

  bool get isValidForm => _phoneController.text.length == 12;

  bool _hidePassword = true;

  void _toggleIcon() => setState(() => _hidePassword = !_hidePassword);

  @override
  void initState() {
    _checkPhoneCubit = CheckPhoneCubit(
        // repository: context.dependencies.smsRepository,
        );
    _phoneController.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CheckPhoneCubit>.value(
      value: _checkPhoneCubit,
      child: BlocConsumer<CheckPhoneCubit, CheckPhoneState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (generatedCode) => context.router.push(
              OtpScreenRoute(
                phone: _phoneController.text,
                generatedCode: generatedCode,
              ),
            ),
            error: (message) {
              log('login error => $message');
              SnackBarUtil.showSnackBar(
                context: context,
                message: message,
                isError: true,
              );
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: OverlayProgress(
                inAsyncCall: state.inProgress,
                progressIndicator: const Loading(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        context.localized.login,
                        textAlign: TextAlign.center,
                        style: TextStyles.h2Bold.copyWith(
                          color: AppColors.mbBrand,
                        ),
                      ),
                      ColumnSpacer(2),
                      CustomTextField(
                        controller: _phoneController,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 4, right: 16),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text('+7', style: TextStyles.body16),
                                const RowSpacer(1.6),
                                Container(
                                  height: 20,
                                  width: 1,
                                  color: AppColors.lightDivider,
                                ),
                              ],
                            ),
                          ),
                          label: Text(
                            context.localized.phoneNumber,
                          ),
                        ),
                      ),
                      // CustomTextField(
                      //   obscureText: _hidePassword,
                      //   controller: _passwordController,
                      //   decoration: InputDecoration(
                      //     label: Text(context.localized.enterPassword),
                      //     suffixIcon: IconButton(
                      //       padding: EdgeInsets.zero,
                      //       constraints: const BoxConstraints(),
                      //       splashColor: Colors.transparent,
                      //       enableFeedback: false,
                      //       onPressed: _toggleIcon,
                      //       icon: Icon(
                      //         _hidePassword
                      //             ? Icons.visibility
                      //             : Icons.visibility_off,
                      //       ),
                      //     ),
                      //   ),
                      // ),

                      // ColumnSpacer(.8),
                      // Align(
                      //   alignment: Alignment.centerRight,
                      //   child: TextButton(
                      //     onPressed: () {
                      //       context.router.push(
                      //         RegisterScreenRoute(),
                      //       );
                      //     },
                      //     child: Text(
                      //       context.localized.register,
                      //     ),
                      //   ),
                      // ),
                      ColumnSpacer(4),
                      CustomButton(
                        onPressed: () => isValidForm
                            ? _checkPhoneCubit.checkPhone(
                                _phoneController.text,
                              )
                            : SnackBarUtil.showSnackBar(
                                context: context,
                                message: 'Недопустимый формат номера',
                                isError: true,
                              ),

                        // {
                        //   context.router.push(
                        //     OtpScreenRoute(
                        //       phone: _phoneController.text,
                        //     ),
                        //   );
                        // },
                        child: Text(
                          context.localized.login,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
