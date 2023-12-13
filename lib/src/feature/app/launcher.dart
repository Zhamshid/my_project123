import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/src/core/widgets/loading.dart';
import 'package:my_project/src/feature/app/bloc/app_bloc.dart';
import 'package:my_project/src/feature/auth/widget/pages/login.dart';
import 'package:my_project/src/feature/main_tabs/main_tabs.dart';

@RoutePage()
class LauncherPage extends StatefulWidget {
  const LauncherPage({super.key});

  @override
  State<LauncherPage> createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  // late final _user = UserScope.of(context);
  @override
  Widget build(BuildContext context) => BlocConsumer<AppBLoC, AppState>(
        listener: (context, state) {},
        builder: (context, state) => state.maybeWhen(
          processing: () => const Scaffold(
            body: Loading(),
          ),
          // unauthorized: () => MainTabsPage(),
          unauthorized: LoginScreen.new,

          orElse: MainTabsPage.new,
        ),
      );
}
