import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_project/src/core/resources/assets.gen.dart';

@immutable
class CustomBackButton extends StatelessWidget {
  const CustomBackButton({this.onTap, super.key});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: onTap ?? () => context.router.pop(),
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        icon: Assets.images.svg.icBack.svg(),
      );
}
