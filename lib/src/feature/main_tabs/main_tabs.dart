import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_project/src/core/extensions/context.dart';
import 'package:my_project/src/core/resources/app_colors.dart';
import 'package:my_project/src/core/resources/assets.gen.dart';
import 'package:my_project/src/core/router/app_router.dart';

@immutable
// @RoutePage(name: 'MainTabsRouter')
class MainTabsPage extends StatefulWidget {
  const MainTabsPage({Key? key}) : super(key: key);

  @override
  State<MainTabsPage> createState() => _MainTabsPageState();
}

class _MainTabsPageState extends State<MainTabsPage> {
  @override
  void initState() {
    super.initState();
  }

  Future<void> _popUntilRoot(TabsRouter tabsRouter) async {
    if (tabsRouter.current.router.canPop()) {
      await tabsRouter.current.router.popTop().then(
            (value) async => _popUntilRoot(tabsRouter),
          );
    }

    return;
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      routes: const [HomeRouter(), ProfileRouter()],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        final currentIndex =
            AutoTabsRouter.of(context, watch: true).activeIndex;

        return Scaffold(
          // body: FadeTransition(
          //   opacity: animation,
          //   child: child,
          // ),
          body: child,
          bottomNavigationBar: Theme(
            data: ThemeData(
              bottomAppBarTheme: const BottomAppBarTheme(color: Colors.red),
              splashFactory: NoSplash.splashFactory,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              // backgroundColor: AppColors.midnightBlueColor,
              currentIndex: tabsRouter.activeIndex,
              // unselectedItemColor: AppColors.steelBlueColor,
              // selectedItemColor: AppColors.selectedNavBarColor,
              selectedItemColor: AppColors.mbBrand,
              unselectedFontSize: 14,
              selectedFontSize: 14,
              selectedLabelStyle: const TextStyle(
                color: AppColors.mbBrand,
              ),

              //  onTap: (index) async => index == currentIndex
              //           ? await _popUntilRoot(tabsRouter)
              //           : tabsRouter.setActiveIndex(index),
              onTap: (index) async {
                setState(() {});
                if (index == currentIndex) {
                  await _popUntilRoot(tabsRouter);
                  HapticFeedback.lightImpact();
                } else {
                  HapticFeedback.lightImpact();
                  tabsRouter.setActiveIndex(index);
                }
              },
              items: [
                /// [MAIN]
                BottomNavigationBarItem(
                  icon: Assets.images.svg.icHomeInactive.svg(),
                  activeIcon: Assets.images.svg.icHomeActive.svg(),
                  label: context.localized.home,
                ),

                /// [PROFILE]
                BottomNavigationBarItem(
                  icon: Assets.images.svg.icProfileInactive.svg(),
                  activeIcon: Assets.images.svg.icProfileActive.svg(),
                  label: context.localized.profile,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
