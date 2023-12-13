import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'ProfileRouter')
class ProfileWrapper extends StatelessWidget {
  const ProfileWrapper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async => false,
        child: const AutoRouter(),
      );
}
