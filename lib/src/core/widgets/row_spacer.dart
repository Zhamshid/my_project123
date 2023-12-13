import 'package:flutter/material.dart';

class RowSpacer extends StatelessWidget {
  const RowSpacer(this.value, {super.key});
  static const int _multiplier = 10;
  final double value;

  @override
  Widget build(BuildContext context) => SizedBox(width: value * _multiplier);
}
