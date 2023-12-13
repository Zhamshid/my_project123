// ignore_for_file: strict_raw_type, comment_references, lines_longer_than_80_chars

import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:l/l.dart';

const String _kUnknownScreen = 'screen';
const String _kUnknownModal = 'modal';

/// Observ navigations and send to [FirebaseAnalytics]
class AnalyticsNavigatorObserver extends RouteObserver<ModalRoute> {
  AnalyticsNavigatorObserver();

  /// Последний открытый PageRoute(экран).
  PageRoute? _lastPageRoute;

  void _sendScreenView(ModalRoute route) {
    final String screenName;
    final String className;

    if (route is PageRoute) {
      _lastPageRoute = route;
      screenName = route.settings.name ?? _kUnknownScreen;

      className = route.settings is Page
          ? route.settings.runtimeType.toString()
          : 'Page';
    } else {
      final currentPageName = _lastPageRoute?.settings.name ?? _kUnknownScreen;
      screenName = '$currentPageName:${route.settings.name ?? _kUnknownModal}';

      if (route is RawDialogRoute) {
        className = 'Dialog';
      } else if (route is PopupRoute) {
        className = 'PopupRoute';
      } else {
        className = 'Modal';
      }
    }

    // if (kReleaseMode) {
    //   analytics.setCurrentScreen(
    //     screenName: screenName,
    //     screenClassOverride: className,
    //   );
    // } else

    l.d('AppRouteObserver: $screenName\nclassName: $className');
    log('AppRouteObserver: Route stack: ${route.navigator?.context.router.currentPath}');
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    if (route is ModalRoute) {
      _sendScreenView(route);
    }
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute is ModalRoute) {
      _sendScreenView(newRoute);
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    if (previousRoute is ModalRoute && route is ModalRoute) {
      _sendScreenView(previousRoute);
    }
  }
}
