import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/src/core/extensions/context.dart';
import 'package:my_project/src/core/resources/app_colors.dart';
import 'package:my_project/src/core/utils/snackbar_util.dart';
import 'package:my_project/src/core/widgets/column_spacer.dart';
import 'package:my_project/src/core/widgets/custom_text_field.dart';
import 'package:my_project/src/core/widgets/loading.dart';
import 'package:my_project/src/core/widgets/overlay_progress.dart';
import 'package:my_project/src/feature/auth/data/user_model.dart';
import 'package:my_project/src/feature/profile/bloc/profile_bloc.dart';
import 'package:my_project/src/feature/profile/bloc/user_profile_edit_bloc/user_profile_edit_bloc.dart';
import 'package:my_project/src/feature/profile/widget/widgets/validator_widget.dart';

@RoutePage()
class ProfileDetailScreen extends StatefulWidget {
  final UserModel profileResponse;
  const ProfileDetailScreen({super.key, required this.profileResponse});

  @override
  State<ProfileDetailScreen> createState() => _ProfileDetailScreenState();
}

class _ProfileDetailScreenState extends State<ProfileDetailScreen> {
  late UserProfileEditBLoC _userProfileEditBLoC;

  /// Маска для номера телефона
  final phoneController = TextEditingController();

  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();

  void _onListen(BuildContext context, UserProfileEditState state) {
    state.whenOrNull(
      updateSuccess: () {
        /// Показываем сообщение
        SnackBarUtil.showSnackBar(
          context: context,
          message: context.localized.successfullyUpdated,
        );

        /// Закрываем окно
        context.router.pop();

        /// Обновляем профиль
        BlocProvider.of<ProfileBLoC>(context).add(
          ProfileEvent.fetchProfile(),
        );
      },
      updateProfileError: (message) => SnackBarUtil.showSnackBar(
        context: context,
        message: message,
        isError: true,
      ),
    );
  }

  @override
  void initState() {
    // Set the initial values for the controllers

    log('INitial phone number ${widget.profileResponse.phone}');
    nameController.text = widget.profileResponse.userName ?? '';
    phoneController.text = widget.profileResponse.phone ?? '';

    // _profileBLoC = ProfileBLoC(
    //   repository: ProfileRepositoryImpl(
    //     client: context.dependencies.networkExecuter,
    //   ),
    // );

    _userProfileEditBLoC = UserProfileEditBLoC(
      repository: context.dependencies.firebaseRepository,
    );

    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    surnameController.dispose();
    phoneController.dispose();
    _userProfileEditBLoC.close();
    super.dispose();
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _userProfileEditBLoC,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: BlocConsumer<UserProfileEditBLoC, UserProfileEditState>(
            listener: _onListen,
            builder: (context, state) {
              return Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  automaticallyImplyLeading: true,
                  leading: CupertinoButton(
                    onPressed: () {
                      context.router.pop();
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: AppColors.black,
                    ),
                  ),
                  actions: [
                    CupertinoButton(
                      padding: const EdgeInsets.only(
                        right: 16,
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          /// Добавляем ивент обновление профиля в блок
                          BlocProvider.of<UserProfileEditBLoC>(context).add(
                            UserProfileEditEvent.update(
                              request: UserModel(
                                userName: nameController.text,
                                phone: phoneController.text,
                                uid: context.dependencies.userRepository.token,
                              ),
                            ),
                          );
                        }
                      },
                      child: Text(
                        context.localized.done,
                        style:
                            //  context.theme.
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: AppColors.black,
                                ),
                      ),
                    )
                  ],
                  title: Text(
                    context.localized.profile,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                        ),
                  ),
                ),
                body: OverlayProgress(
                  inAsyncCall: state.isUpdating,
                  progressIndicator: const Loading(),
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 16,
                      ),
                      child: Column(
                        children: [
                          CustomTextField(
                            decoration: InputDecoration(
                              label: Text(context.localized.name),
                            ),
                            controller: nameController,
                          ),
                          ValidatorErrorWidget(
                            controller: nameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Имя не может быть пустым';
                              }
                              return null;
                            },
                          ),
                          const ColumnSpacer(0.8),
                          CustomTextField(
                            // enabled: false,
                            readOnly: true,
                            controller: phoneController,
                            decoration: InputDecoration(
                              label: Text(context.localized.phoneNumber),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
