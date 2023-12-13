import 'package:flutter/material.dart';

class NavigatorHolder {
  factory NavigatorHolder() => _instance;
  NavigatorHolder._internal();
  static final NavigatorHolder _instance = NavigatorHolder._internal();

  NavigatorState? navigator;

  static NavigatorHolder get instance => _instance;
}
