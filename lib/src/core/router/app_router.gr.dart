// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthWrapper(),
      );
    },
    ChangeLanguageScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChangeLanguageScreen(),
      );
    },
    HomeRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeRouterEmptyPage(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    LauncherPageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LauncherPage(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    MyQRcodeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyQRcode(),
      );
    },
    NameScreenRoute.name: (routeData) {
      final args = routeData.argsAs<NameScreenRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NameScreen(
          key: args.key,
          token: args.token,
        ),
      );
    },
    NewsDetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<NewsDetailsScreenRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewsDetailsScreen(
          key: args.key,
          imageLink: args.imageLink,
          newsModel: args.newsModel,
        ),
      );
    },
    OtpScreenRoute.name: (routeData) {
      final args = routeData.argsAs<OtpScreenRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OtpScreen(
          key: args.key,
          phone: args.phone,
          generatedCode: args.generatedCode,
        ),
      );
    },
    ProfileDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileDetailScreenRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileDetailScreen(
          key: args.key,
          profileResponse: args.profileResponse,
        ),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    ProfileRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileWrapper(),
      );
    },
    RegisterScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterScreen(),
      );
    },
    StoryPageRoute.name: (routeData) {
      final args = routeData.argsAs<StoryPageRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: StoryPage(
          key: args.key,
          sampleUsers: args.sampleUsers,
          storyGroupIndex: args.storyGroupIndex,
        ),
      );
    },
  };
}

/// generated route for
/// [AuthWrapper]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChangeLanguageScreen]
class ChangeLanguageScreenRoute extends PageRouteInfo<void> {
  const ChangeLanguageScreenRoute({List<PageRouteInfo>? children})
      : super(
          ChangeLanguageScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangeLanguageScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeRouterEmptyPage]
class HomeRouter extends PageRouteInfo<void> {
  const HomeRouter({List<PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeScreenRoute extends PageRouteInfo<void> {
  const HomeScreenRoute({List<PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LauncherPage]
class LauncherPageRoute extends PageRouteInfo<void> {
  const LauncherPageRoute({List<PageRouteInfo>? children})
      : super(
          LauncherPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'LauncherPageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginScreenRoute extends PageRouteInfo<void> {
  const LoginScreenRoute({List<PageRouteInfo>? children})
      : super(
          LoginScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyQRcode]
class MyQRcodeRoute extends PageRouteInfo<void> {
  const MyQRcodeRoute({List<PageRouteInfo>? children})
      : super(
          MyQRcodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyQRcodeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NameScreen]
class NameScreenRoute extends PageRouteInfo<NameScreenRouteArgs> {
  NameScreenRoute({
    Key? key,
    required String token,
    List<PageRouteInfo>? children,
  }) : super(
          NameScreenRoute.name,
          args: NameScreenRouteArgs(
            key: key,
            token: token,
          ),
          initialChildren: children,
        );

  static const String name = 'NameScreenRoute';

  static const PageInfo<NameScreenRouteArgs> page =
      PageInfo<NameScreenRouteArgs>(name);
}

class NameScreenRouteArgs {
  const NameScreenRouteArgs({
    this.key,
    required this.token,
  });

  final Key? key;

  final String token;

  @override
  String toString() {
    return 'NameScreenRouteArgs{key: $key, token: $token}';
  }
}

/// generated route for
/// [NewsDetailsScreen]
class NewsDetailsScreenRoute extends PageRouteInfo<NewsDetailsScreenRouteArgs> {
  NewsDetailsScreenRoute({
    Key? key,
    required String imageLink,
    required NewsModel newsModel,
    List<PageRouteInfo>? children,
  }) : super(
          NewsDetailsScreenRoute.name,
          args: NewsDetailsScreenRouteArgs(
            key: key,
            imageLink: imageLink,
            newsModel: newsModel,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsDetailsScreenRoute';

  static const PageInfo<NewsDetailsScreenRouteArgs> page =
      PageInfo<NewsDetailsScreenRouteArgs>(name);
}

class NewsDetailsScreenRouteArgs {
  const NewsDetailsScreenRouteArgs({
    this.key,
    required this.imageLink,
    required this.newsModel,
  });

  final Key? key;

  final String imageLink;

  final NewsModel newsModel;

  @override
  String toString() {
    return 'NewsDetailsScreenRouteArgs{key: $key, imageLink: $imageLink, newsModel: $newsModel}';
  }
}

/// generated route for
/// [OtpScreen]
class OtpScreenRoute extends PageRouteInfo<OtpScreenRouteArgs> {
  OtpScreenRoute({
    Key? key,
    required String phone,
    required String generatedCode,
    List<PageRouteInfo>? children,
  }) : super(
          OtpScreenRoute.name,
          args: OtpScreenRouteArgs(
            key: key,
            phone: phone,
            generatedCode: generatedCode,
          ),
          initialChildren: children,
        );

  static const String name = 'OtpScreenRoute';

  static const PageInfo<OtpScreenRouteArgs> page =
      PageInfo<OtpScreenRouteArgs>(name);
}

class OtpScreenRouteArgs {
  const OtpScreenRouteArgs({
    this.key,
    required this.phone,
    required this.generatedCode,
  });

  final Key? key;

  final String phone;

  final String generatedCode;

  @override
  String toString() {
    return 'OtpScreenRouteArgs{key: $key, phone: $phone, generatedCode: $generatedCode}';
  }
}

/// generated route for
/// [ProfileDetailScreen]
class ProfileDetailScreenRoute
    extends PageRouteInfo<ProfileDetailScreenRouteArgs> {
  ProfileDetailScreenRoute({
    Key? key,
    required UserModel profileResponse,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileDetailScreenRoute.name,
          args: ProfileDetailScreenRouteArgs(
            key: key,
            profileResponse: profileResponse,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileDetailScreenRoute';

  static const PageInfo<ProfileDetailScreenRouteArgs> page =
      PageInfo<ProfileDetailScreenRouteArgs>(name);
}

class ProfileDetailScreenRouteArgs {
  const ProfileDetailScreenRouteArgs({
    this.key,
    required this.profileResponse,
  });

  final Key? key;

  final UserModel profileResponse;

  @override
  String toString() {
    return 'ProfileDetailScreenRouteArgs{key: $key, profileResponse: $profileResponse}';
  }
}

/// generated route for
/// [ProfileScreen]
class ProfileScreenRoute extends PageRouteInfo<void> {
  const ProfileScreenRoute({List<PageRouteInfo>? children})
      : super(
          ProfileScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileWrapper]
class ProfileRouter extends PageRouteInfo<void> {
  const ProfileRouter({List<PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterScreen]
class RegisterScreenRoute extends PageRouteInfo<void> {
  const RegisterScreenRoute({List<PageRouteInfo>? children})
      : super(
          RegisterScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StoryPage]
class StoryPageRoute extends PageRouteInfo<StoryPageRouteArgs> {
  StoryPageRoute({
    Key? key,
    required List<UserStoriesModel> sampleUsers,
    required int storyGroupIndex,
    List<PageRouteInfo>? children,
  }) : super(
          StoryPageRoute.name,
          args: StoryPageRouteArgs(
            key: key,
            sampleUsers: sampleUsers,
            storyGroupIndex: storyGroupIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'StoryPageRoute';

  static const PageInfo<StoryPageRouteArgs> page =
      PageInfo<StoryPageRouteArgs>(name);
}

class StoryPageRouteArgs {
  const StoryPageRouteArgs({
    this.key,
    required this.sampleUsers,
    required this.storyGroupIndex,
  });

  final Key? key;

  final List<UserStoriesModel> sampleUsers;

  final int storyGroupIndex;

  @override
  String toString() {
    return 'StoryPageRouteArgs{key: $key, sampleUsers: $sampleUsers, storyGroupIndex: $storyGroupIndex}';
  }
}
