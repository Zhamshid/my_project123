import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_project/src/core/extensions/context.dart';
import 'package:my_project/src/feature/app/bloc/app_bloc.dart';
import 'package:my_project/src/feature/profile/bloc/profile_bloc.dart';

class AppScope extends StatelessWidget {
  const AppScope({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AppBLoC(
              repository: context.dependencies.userRepository,
            )..add(
                const AppEvent.checkAuth(),
              ),
          ),
          BlocProvider(
            create: (context) => ProfileBLoC(
              repository: context.dependencies.firebaseRepository,
            ),
          ),
        ],
        child: child,
      );
}
