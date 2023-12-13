import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_project/src/core/router/app_router.dart';
import 'package:my_project/src/core/router/observers/analytics_navigator_observer.dart';
import 'package:my_project/src/core/router/observers/navigator_observer.dart';

typedef CreateRouter = RootStackRouter Function(BuildContext context);

typedef RouterWidgetBuilder = Widget Function(
  BuildContext context,
  RouteInformationParser<UrlState> informationParser,
  RouterDelegate<UrlState> routerDelegate,
);

@immutable
class AppRouterBuilder extends StatefulWidget {
  const AppRouterBuilder({
    required this.createRouter,
    required this.builder,
    super.key,
  });
  final CreateRouter createRouter;
  final RouterWidgetBuilder builder;

  @override
  State<AppRouterBuilder> createState() => _AppRouterBuilderState();
}

class _AppRouterBuilderState extends State<AppRouterBuilder> {
  late final router = widget.createRouter(context);

  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
  }

  @override
  void dispose() {
    router.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.builder(
        context,
        router.defaultRouteParser(),
        router.delegate(
          placeholder: (context) => const Scaffold(),
          // deepLinkBuilder: (deepLink) => const DeepLink([LoginPinRoute()]),
          deepLinkBuilder: (deepLink) => const DeepLink([LauncherPageRoute()]),
          navigatorObservers: () =>
              [AnalyticsNavigatorObserver(), NavigatorHolderObserver()],
        ),
      );
}
