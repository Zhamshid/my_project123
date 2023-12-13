import 'package:flutter/widgets.dart';
import 'package:my_project/src/core/router/observers/navigator_holder.dart';

/// Mixin to get navigator context.
class NavigatorHolderObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    NavigatorHolder().navigator = navigator;
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    NavigatorHolder().navigator = navigator;
  }
}
