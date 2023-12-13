import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/src/core/extensions/context.dart';
import 'package:my_project/src/core/router/app_router.dart';
import 'package:my_project/src/core/utils/snackbar_util.dart';
import 'package:my_project/src/core/widgets/column_spacer.dart';
import 'package:my_project/src/core/widgets/custom_button.dart';
import 'package:my_project/src/core/widgets/custom_text_field.dart';
import 'package:my_project/src/core/widgets/loading.dart';
import 'package:my_project/src/core/widgets/overlay_progress.dart';
import 'package:my_project/src/feature/app/bloc/app_bloc.dart';
import 'package:my_project/src/feature/auth/cubit/name_cubit/name_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class NameScreen extends StatefulWidget {
  const NameScreen({super.key, required this.token});
  final String token;

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  late User? _user;
  late SharedPreferences _preferences;
  late final NameCubit _nameCubit;
  final _nameController = TextEditingController();

  @override
  void initState() {
    _nameCubit = NameCubit(repository: context.dependencies.firebaseRepository);
    _preferences = context.dependencies.sharedPreferences;
    _user = context.dependencies.auth.currentUser;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NameCubit>.value(
      value: _nameCubit,
      child: BlocConsumer<NameCubit, NameState>(
        listener: (context, state) {
          state.whenOrNull(
            error: (message) => SnackBarUtil.showSnackBar(
              context: context,
              message: message,
              isError: true,
            ),
            success: () async {
              await _preferences.setBool('isNameFilled:${_user?.uid}', true);

              if (widget.token.isNotEmpty) {
                BlocProvider.of<AppBLoC>(context).add(
                  AppEvent.login(
                    token: widget.token,
                  ),
                );
              }
              context.router.replaceAll(
                [
                  const LauncherPageRoute(),
                ],
              );
            },
          );
        },
        builder: (context, state) {
          return OverlayProgress(
            inAsyncCall: state.inProgress,
            progressIndicator: const Loading(),
            child: Scaffold(
              body: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 100,
                ),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// [NAME FIELD]
                      Text(
                        context.localized.name,
                        style: context.theme.textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 28,
                        ),
                      ),
                      const ColumnSpacer(2.4),

                      CustomTextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          label: Text(context.localized.enterName),
                        ),
                      ),
                      const ColumnSpacer(4),
                      CustomButton(
                        onPressed: () =>
                            _nameCubit.addName(_nameController.text),
                        // onPressed: () => FirebaseAuth.instance.signOut(),
                        child: Text(context.localized.done),
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
