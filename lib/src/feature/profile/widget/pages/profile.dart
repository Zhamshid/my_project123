import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/src/core/extensions/context.dart';
import 'package:my_project/src/core/resources/app_colors.dart';
import 'package:my_project/src/core/resources/assets.gen.dart';
import 'package:my_project/src/core/resources/text_styles.dart';
import 'package:my_project/src/core/router/app_router.dart';
import 'package:my_project/src/core/widgets/column_spacer.dart';
import 'package:my_project/src/core/widgets/loading.dart';
import 'package:my_project/src/feature/app/bloc/app_bloc.dart';
import 'package:my_project/src/feature/profile/bloc/profile_bloc.dart';
import 'package:my_project/src/feature/profile/widget/widgets/default_option_container.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late final ProfileBLoC _bloc;

  @override
  void initState() {
    /// Инициализируем BLoC
    _bloc = BlocProvider.of<ProfileBLoC>(context);

    /// и получаем данные профиля
    _bloc
      ..add(
        ProfileEvent.fetchProfile(),
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgDefault,
      appBar: AppBar(
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              context.router.push(MyQRcodeRoute());
            },
            icon: Icon(
              Icons.qr_code_rounded,
              color: AppColors.mbBrand,
            ),
          ),
        ],
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            context.localized.profile,
            style: TextStyles.h2Bold.copyWith(
              color: AppColors.mbBrand,
            ),
          ),
        ),
      ),
      body: BlocConsumer<ProfileBLoC, ProfileState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.maybeWhen(
            orElse: SizedBox.new,
            inProgress: Loading.new,
            error: (message) => Center(
              child: Text(
                message,
                style: TextStyles.body16,
              ),
            ),
            success: (userModel) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 20,
              ),
              child: Column(
                children: [
                  /// Имя и номер пользователя

                  DefaultOptionContainer(
                    icon: Assets.images.svg.icUser.path,
                    onPress: () {
                      context.router.push(
                        ProfileDetailScreenRoute(
                          profileResponse: userModel,
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userModel.userName ?? '',
                          style: TextStyles.h1Medium.copyWith(
                            letterSpacing: .5,
                          ),
                        ),
                        Text(
                          userModel.phone ?? '',
                          style: TextStyles.bodyBold16,
                        ),
                      ],
                    ),
                  ),

                  ColumnSpacer(1),

                  /// Язык приложения
                  DefaultOptionContainer(
                    icon: Assets.images.svg.icLocalizations.path,
                    onPress: () {
                      context.router.push(
                        ChangeLanguageScreenRoute(),
                      );
                    },
                    child: Text(
                      context.localized.appLanguage,
                      style: TextStyles.bodyBold16,
                    ),
                  ),
                  ColumnSpacer(1),

                  /// Выйти из аккаунта
                  DefaultOptionContainer(
                    icon: Assets.images.svg.icLogout.path,
                    onPress: () {
                      BlocProvider.of<AppBLoC>(context).add(
                        AppEvent.logOut(),
                      );
                    },
                    isVisibleArrow: false,
                    child: Text(
                      context.localized.logout,
                      style: TextStyles.bodyBold16,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
