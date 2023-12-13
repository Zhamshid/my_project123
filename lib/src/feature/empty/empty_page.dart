import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'HomeRouter')
class HomeRouterEmptyPage extends StatelessWidget {
  const HomeRouterEmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
