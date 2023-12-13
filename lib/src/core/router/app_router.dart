import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_project/src/feature/app/launcher.dart';
import 'package:my_project/src/feature/auth/data/user_model.dart';
import 'package:my_project/src/feature/auth/widget/pages/auth_wrapper.dart';
import 'package:my_project/src/feature/auth/widget/pages/login.dart';
import 'package:my_project/src/feature/auth/widget/pages/name.dart';
import 'package:my_project/src/feature/auth/widget/pages/otp.dart';
import 'package:my_project/src/feature/auth/widget/pages/register.dart';
import 'package:my_project/src/feature/empty/empty_page.dart';
import 'package:my_project/src/feature/home/api/model/news_model.dart';
import 'package:my_project/src/feature/home/api/model/story_model.dart';
import 'package:my_project/src/feature/home/widget/pages/home.dart';
import 'package:my_project/src/feature/home/widget/pages/news_detail.dart';
import 'package:my_project/src/feature/home/widget/pages/story_page.dart';
import 'package:my_project/src/feature/profile/widget/pages/change_language.dart';
import 'package:my_project/src/feature/profile/widget/pages/my_qrcode.dart';
import 'package:my_project/src/feature/profile/widget/pages/profile.dart';
import 'package:my_project/src/feature/profile/widget/pages/profile_details.dart';
import 'package:my_project/src/feature/profile/widget/widgets/profile_wrapper.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route,Screen',
)
class AppRouter extends _$AppRouter {
  AppRouter();

  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: StoryPageRoute.page,
          path: '/stories',
          fullscreenDialog: true,
        ),
        AutoRoute(
          page: NameScreenRoute.page,
          path: '/name_screen',
        ),
        AutoRoute(
          page: MyQRcodeRoute.page,
          path: '/my_qr',
        ),

        AutoRoute(
          page: ChangeLanguageScreenRoute.page,
          path: '/change_language',
        ),

        AutoRoute(
          page: ProfileDetailScreenRoute.page,
          path: '/profile_details',
        ),

        AutoRoute(
          page: NewsDetailsScreenRoute.page,
          path: '/news_details',
        ),

        /*-- Launcher Route --*/
        AutoRoute(
            page: LauncherPageRoute.page,
            path: '/launcher',
            initial: true,
            children: [
              AutoRoute(
                path: 'home',
                page: HomeRouter.page,
                children: [
                  AutoRoute(
                    page: HomeScreenRoute.page,
                    path: '',
                  ),
                ],
              ),
              AutoRoute(
                path: 'profile',
                page: ProfileRouter.page,
                children: [
                  AutoRoute(
                    page: ProfileScreenRoute.page,
                    path: '',
                  ),
                ],
              ),
            ]),

        // Authentication
        AutoRoute(
          page: AuthRoute.page,
          path: '/auth',
          children: [
            AutoRoute(
              page: LoginScreenRoute.page,
              path: 'login',
              initial: true,
            ),
            AutoRoute(
              page: RegisterScreenRoute.page,
              path: 'register',
            ),
            AutoRoute(
              page: OtpScreenRoute.page,
              path: 'otp',
            ),
          ],
        ),

        // /*-- Tabs --*/
        // AutoRoute(
        //   page: MainTabsRouter.page,
        //   path: '/',
        //   children: [

        //   ],
        // ),
      ];
}
