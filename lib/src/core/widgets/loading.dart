import 'package:flutter/material.dart';
import 'package:my_project/src/core/widgets/custom_progress_indicator.dart';

@immutable
class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) => const Center(
        child: CustomProgressIndicator(),
      );
}
