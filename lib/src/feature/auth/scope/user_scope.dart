// ignore_for_file: avoid_positional_boolean_parameters

import 'package:flutter/material.dart';
import 'package:my_project/src/core/widgets/scope.dart';
import 'package:my_project/src/feature/auth/repository/user_repository.dart';

abstract class IUser {
  String get email;

  String get password;

  bool get isKnownDevice;

  IUserRepository get userRepository;

  set password(String value);

  set email(String value);
}

class UserScope extends Scope {
  const UserScope({
    required super.child,
    required this.userRepository,
    super.key,
  });

  final IUserRepository userRepository;

  static const DelegateAccess<_UserScopeDelegate> _delegateOf =
      Scope.delegateOf<UserScope, _UserScopeDelegate>;

  static IUser of(BuildContext context) => _delegateOf(context);

  @override
  ScopeDelegate<UserScope> createDelegate() => _UserScopeDelegate();
}

class _UserScopeDelegate extends ScopeDelegate<UserScope> implements IUser {
  late String _email;
  late String _password;

  @override
  IUserRepository get userRepository => widget.userRepository;

  @override
  bool get isKnownDevice => widget.userRepository.isKnownDevice;

  @override
  String get email => _email;

  @override
  String get password => _password;

  @override
  set email(String value) {
    setState(() => _email = value);
  }

  @override
  set password(String value) {
    setState(() => _password = value);
  }
}
