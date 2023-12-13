import 'package:flutter/material.dart';

class ColumnSpacer extends StatelessWidget {
  const ColumnSpacer(this.value, {super.key});
  static const int _multiplier = 10;

  final double value;

  @override
  Widget build(BuildContext context) => SizedBox(height: value * _multiplier);
}
