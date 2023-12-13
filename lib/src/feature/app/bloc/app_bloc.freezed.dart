// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function() logOut,
    required TResult Function(String token) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function()? logOut,
    TResult? Function(String token)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? logOut,
    TResult Function(String token)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Login value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_Login value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckAuthImplCopyWith<$Res> {
  factory _$$CheckAuthImplCopyWith(
          _$CheckAuthImpl value, $Res Function(_$CheckAuthImpl) then) =
      __$$CheckAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAuthImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$CheckAuthImpl>
    implements _$$CheckAuthImplCopyWith<$Res> {
  __$$CheckAuthImplCopyWithImpl(
      _$CheckAuthImpl _value, $Res Function(_$CheckAuthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckAuthImpl extends _CheckAuth {
  const _$CheckAuthImpl() : super._();

  @override
  String toString() {
    return 'AppEvent.checkAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function() logOut,
    required TResult Function(String token) login,
  }) {
    return checkAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function()? logOut,
    TResult? Function(String token)? login,
  }) {
    return checkAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? logOut,
    TResult Function(String token)? login,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Login value) login,
  }) {
    return checkAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_Login value)? login,
  }) {
    return checkAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth(this);
    }
    return orElse();
  }
}

abstract class _CheckAuth extends AppEvent {
  const factory _CheckAuth() = _$CheckAuthImpl;
  const _CheckAuth._() : super._();
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl _value, $Res Function(_$LogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutImpl extends _LogOut {
  const _$LogOutImpl() : super._();

  @override
  String toString() {
    return 'AppEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function() logOut,
    required TResult Function(String token) login,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function()? logOut,
    TResult? Function(String token)? login,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? logOut,
    TResult Function(String token)? login,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Login value) login,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_Login value)? login,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut extends AppEvent {
  const factory _LogOut() = _$LogOutImpl;
  const _LogOut._() : super._();
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$LoginImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginImpl extends _Login {
  const _$LoginImpl({required this.token}) : super._();

  @override
  final String token;

  @override
  String toString() {
    return 'AppEvent.login(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function() logOut,
    required TResult Function(String token) login,
  }) {
    return login(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function()? logOut,
    TResult? Function(String token)? login,
  }) {
    return login?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function()? logOut,
    TResult Function(String token)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Login value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_Login value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login extends AppEvent {
  const factory _Login({required final String token}) = _$LoginImpl;
  const _Login._() : super._();

  String get token;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function() unauthorized,
    required TResult Function() authorized,
    required TResult Function() hasMembership,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? unauthorized,
    TResult? Function()? authorized,
    TResult? Function()? hasMembership,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? unauthorized,
    TResult Function()? authorized,
    TResult Function()? hasMembership,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessingAppState value) processing,
    required TResult Function(_NotAuthorizedState value) unauthorized,
    required TResult Function(_InAppState value) authorized,
    required TResult Function(_HasMembershipState value) hasMembership,
    required TResult Function(ErrorAppState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingAppState value)? processing,
    TResult? Function(_NotAuthorizedState value)? unauthorized,
    TResult? Function(_InAppState value)? authorized,
    TResult? Function(_HasMembershipState value)? hasMembership,
    TResult? Function(ErrorAppState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingAppState value)? processing,
    TResult Function(_NotAuthorizedState value)? unauthorized,
    TResult Function(_InAppState value)? authorized,
    TResult Function(_HasMembershipState value)? hasMembership,
    TResult Function(ErrorAppState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProcessingAppStateImplCopyWith<$Res> {
  factory _$$ProcessingAppStateImplCopyWith(_$ProcessingAppStateImpl value,
          $Res Function(_$ProcessingAppStateImpl) then) =
      __$$ProcessingAppStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProcessingAppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$ProcessingAppStateImpl>
    implements _$$ProcessingAppStateImplCopyWith<$Res> {
  __$$ProcessingAppStateImplCopyWithImpl(_$ProcessingAppStateImpl _value,
      $Res Function(_$ProcessingAppStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProcessingAppStateImpl extends ProcessingAppState {
  const _$ProcessingAppStateImpl() : super._();

  @override
  String toString() {
    return 'AppState.processing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProcessingAppStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function() unauthorized,
    required TResult Function() authorized,
    required TResult Function() hasMembership,
    required TResult Function(String message) error,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? unauthorized,
    TResult? Function()? authorized,
    TResult? Function()? hasMembership,
    TResult? Function(String message)? error,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? unauthorized,
    TResult Function()? authorized,
    TResult Function()? hasMembership,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessingAppState value) processing,
    required TResult Function(_NotAuthorizedState value) unauthorized,
    required TResult Function(_InAppState value) authorized,
    required TResult Function(_HasMembershipState value) hasMembership,
    required TResult Function(ErrorAppState value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingAppState value)? processing,
    TResult? Function(_NotAuthorizedState value)? unauthorized,
    TResult? Function(_InAppState value)? authorized,
    TResult? Function(_HasMembershipState value)? hasMembership,
    TResult? Function(ErrorAppState value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingAppState value)? processing,
    TResult Function(_NotAuthorizedState value)? unauthorized,
    TResult Function(_InAppState value)? authorized,
    TResult Function(_HasMembershipState value)? hasMembership,
    TResult Function(ErrorAppState value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class ProcessingAppState extends AppState {
  const factory ProcessingAppState() = _$ProcessingAppStateImpl;
  const ProcessingAppState._() : super._();
}

/// @nodoc
abstract class _$$NotAuthorizedStateImplCopyWith<$Res> {
  factory _$$NotAuthorizedStateImplCopyWith(_$NotAuthorizedStateImpl value,
          $Res Function(_$NotAuthorizedStateImpl) then) =
      __$$NotAuthorizedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotAuthorizedStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$NotAuthorizedStateImpl>
    implements _$$NotAuthorizedStateImplCopyWith<$Res> {
  __$$NotAuthorizedStateImplCopyWithImpl(_$NotAuthorizedStateImpl _value,
      $Res Function(_$NotAuthorizedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotAuthorizedStateImpl extends _NotAuthorizedState {
  const _$NotAuthorizedStateImpl() : super._();

  @override
  String toString() {
    return 'AppState.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotAuthorizedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function() unauthorized,
    required TResult Function() authorized,
    required TResult Function() hasMembership,
    required TResult Function(String message) error,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? unauthorized,
    TResult? Function()? authorized,
    TResult? Function()? hasMembership,
    TResult? Function(String message)? error,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? unauthorized,
    TResult Function()? authorized,
    TResult Function()? hasMembership,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessingAppState value) processing,
    required TResult Function(_NotAuthorizedState value) unauthorized,
    required TResult Function(_InAppState value) authorized,
    required TResult Function(_HasMembershipState value) hasMembership,
    required TResult Function(ErrorAppState value) error,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingAppState value)? processing,
    TResult? Function(_NotAuthorizedState value)? unauthorized,
    TResult? Function(_InAppState value)? authorized,
    TResult? Function(_HasMembershipState value)? hasMembership,
    TResult? Function(ErrorAppState value)? error,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingAppState value)? processing,
    TResult Function(_NotAuthorizedState value)? unauthorized,
    TResult Function(_InAppState value)? authorized,
    TResult Function(_HasMembershipState value)? hasMembership,
    TResult Function(ErrorAppState value)? error,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _NotAuthorizedState extends AppState {
  const factory _NotAuthorizedState() = _$NotAuthorizedStateImpl;
  const _NotAuthorizedState._() : super._();
}

/// @nodoc
abstract class _$$InAppStateImplCopyWith<$Res> {
  factory _$$InAppStateImplCopyWith(
          _$InAppStateImpl value, $Res Function(_$InAppStateImpl) then) =
      __$$InAppStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InAppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$InAppStateImpl>
    implements _$$InAppStateImplCopyWith<$Res> {
  __$$InAppStateImplCopyWithImpl(
      _$InAppStateImpl _value, $Res Function(_$InAppStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InAppStateImpl extends _InAppState {
  const _$InAppStateImpl() : super._();

  @override
  String toString() {
    return 'AppState.authorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InAppStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function() unauthorized,
    required TResult Function() authorized,
    required TResult Function() hasMembership,
    required TResult Function(String message) error,
  }) {
    return authorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? unauthorized,
    TResult? Function()? authorized,
    TResult? Function()? hasMembership,
    TResult? Function(String message)? error,
  }) {
    return authorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? unauthorized,
    TResult Function()? authorized,
    TResult Function()? hasMembership,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessingAppState value) processing,
    required TResult Function(_NotAuthorizedState value) unauthorized,
    required TResult Function(_InAppState value) authorized,
    required TResult Function(_HasMembershipState value) hasMembership,
    required TResult Function(ErrorAppState value) error,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingAppState value)? processing,
    TResult? Function(_NotAuthorizedState value)? unauthorized,
    TResult? Function(_InAppState value)? authorized,
    TResult? Function(_HasMembershipState value)? hasMembership,
    TResult? Function(ErrorAppState value)? error,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingAppState value)? processing,
    TResult Function(_NotAuthorizedState value)? unauthorized,
    TResult Function(_InAppState value)? authorized,
    TResult Function(_HasMembershipState value)? hasMembership,
    TResult Function(ErrorAppState value)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _InAppState extends AppState {
  const factory _InAppState() = _$InAppStateImpl;
  const _InAppState._() : super._();
}

/// @nodoc
abstract class _$$HasMembershipStateImplCopyWith<$Res> {
  factory _$$HasMembershipStateImplCopyWith(_$HasMembershipStateImpl value,
          $Res Function(_$HasMembershipStateImpl) then) =
      __$$HasMembershipStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HasMembershipStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$HasMembershipStateImpl>
    implements _$$HasMembershipStateImplCopyWith<$Res> {
  __$$HasMembershipStateImplCopyWithImpl(_$HasMembershipStateImpl _value,
      $Res Function(_$HasMembershipStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HasMembershipStateImpl extends _HasMembershipState {
  const _$HasMembershipStateImpl() : super._();

  @override
  String toString() {
    return 'AppState.hasMembership()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HasMembershipStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function() unauthorized,
    required TResult Function() authorized,
    required TResult Function() hasMembership,
    required TResult Function(String message) error,
  }) {
    return hasMembership();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? unauthorized,
    TResult? Function()? authorized,
    TResult? Function()? hasMembership,
    TResult? Function(String message)? error,
  }) {
    return hasMembership?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? unauthorized,
    TResult Function()? authorized,
    TResult Function()? hasMembership,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (hasMembership != null) {
      return hasMembership();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessingAppState value) processing,
    required TResult Function(_NotAuthorizedState value) unauthorized,
    required TResult Function(_InAppState value) authorized,
    required TResult Function(_HasMembershipState value) hasMembership,
    required TResult Function(ErrorAppState value) error,
  }) {
    return hasMembership(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingAppState value)? processing,
    TResult? Function(_NotAuthorizedState value)? unauthorized,
    TResult? Function(_InAppState value)? authorized,
    TResult? Function(_HasMembershipState value)? hasMembership,
    TResult? Function(ErrorAppState value)? error,
  }) {
    return hasMembership?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingAppState value)? processing,
    TResult Function(_NotAuthorizedState value)? unauthorized,
    TResult Function(_InAppState value)? authorized,
    TResult Function(_HasMembershipState value)? hasMembership,
    TResult Function(ErrorAppState value)? error,
    required TResult orElse(),
  }) {
    if (hasMembership != null) {
      return hasMembership(this);
    }
    return orElse();
  }
}

abstract class _HasMembershipState extends AppState {
  const factory _HasMembershipState() = _$HasMembershipStateImpl;
  const _HasMembershipState._() : super._();
}

/// @nodoc
abstract class _$$ErrorAppStateImplCopyWith<$Res> {
  factory _$$ErrorAppStateImplCopyWith(
          _$ErrorAppStateImpl value, $Res Function(_$ErrorAppStateImpl) then) =
      __$$ErrorAppStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorAppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$ErrorAppStateImpl>
    implements _$$ErrorAppStateImplCopyWith<$Res> {
  __$$ErrorAppStateImplCopyWithImpl(
      _$ErrorAppStateImpl _value, $Res Function(_$ErrorAppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorAppStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorAppStateImpl extends ErrorAppState {
  const _$ErrorAppStateImpl({this.message = 'An error has occurred'})
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AppState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorAppStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorAppStateImplCopyWith<_$ErrorAppStateImpl> get copyWith =>
      __$$ErrorAppStateImplCopyWithImpl<_$ErrorAppStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() processing,
    required TResult Function() unauthorized,
    required TResult Function() authorized,
    required TResult Function() hasMembership,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? processing,
    TResult? Function()? unauthorized,
    TResult? Function()? authorized,
    TResult? Function()? hasMembership,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? processing,
    TResult Function()? unauthorized,
    TResult Function()? authorized,
    TResult Function()? hasMembership,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProcessingAppState value) processing,
    required TResult Function(_NotAuthorizedState value) unauthorized,
    required TResult Function(_InAppState value) authorized,
    required TResult Function(_HasMembershipState value) hasMembership,
    required TResult Function(ErrorAppState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProcessingAppState value)? processing,
    TResult? Function(_NotAuthorizedState value)? unauthorized,
    TResult? Function(_InAppState value)? authorized,
    TResult? Function(_HasMembershipState value)? hasMembership,
    TResult? Function(ErrorAppState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProcessingAppState value)? processing,
    TResult Function(_NotAuthorizedState value)? unauthorized,
    TResult Function(_InAppState value)? authorized,
    TResult Function(_HasMembershipState value)? hasMembership,
    TResult Function(ErrorAppState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorAppState extends AppState {
  const factory ErrorAppState({final String message}) = _$ErrorAppStateImpl;
  const ErrorAppState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorAppStateImplCopyWith<_$ErrorAppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
