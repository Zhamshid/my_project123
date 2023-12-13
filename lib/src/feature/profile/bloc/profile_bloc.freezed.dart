// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProfile value)? fetchProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchProfileImplCopyWith<$Res> {
  factory _$$FetchProfileImplCopyWith(
          _$FetchProfileImpl value, $Res Function(_$FetchProfileImpl) then) =
      __$$FetchProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$FetchProfileImpl>
    implements _$$FetchProfileImplCopyWith<$Res> {
  __$$FetchProfileImplCopyWithImpl(
      _$FetchProfileImpl _value, $Res Function(_$FetchProfileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchProfileImpl implements _FetchProfile {
  const _$FetchProfileImpl();

  @override
  String toString() {
    return 'ProfileEvent.fetchProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProfile,
  }) {
    return fetchProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchProfile,
  }) {
    return fetchProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProfile,
    required TResult orElse(),
  }) {
    if (fetchProfile != null) {
      return fetchProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
  }) {
    return fetchProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProfile value)? fetchProfile,
  }) {
    return fetchProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    required TResult orElse(),
  }) {
    if (fetchProfile != null) {
      return fetchProfile(this);
    }
    return orElse();
  }
}

abstract class _FetchProfile implements ProfileEvent {
  const factory _FetchProfile() = _$FetchProfileImpl;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String message) error,
    required TResult Function(UserModel userModel) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String message)? error,
    TResult? Function(UserModel userModel)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String message)? error,
    TResult Function(UserModel userModel)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchProfileInProgress value) inProgress,
    required TResult Function(_FetchProfileError value) error,
    required TResult Function(_FetchProfileSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchProfileInProgress value)? inProgress,
    TResult? Function(_FetchProfileError value)? error,
    TResult? Function(_FetchProfileSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchProfileInProgress value)? inProgress,
    TResult Function(_FetchProfileError value)? error,
    TResult Function(_FetchProfileSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String message) error,
    required TResult Function(UserModel userModel) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String message)? error,
    TResult? Function(UserModel userModel)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String message)? error,
    TResult Function(UserModel userModel)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchProfileInProgress value) inProgress,
    required TResult Function(_FetchProfileError value) error,
    required TResult Function(_FetchProfileSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchProfileInProgress value)? inProgress,
    TResult? Function(_FetchProfileError value)? error,
    TResult? Function(_FetchProfileSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchProfileInProgress value)? inProgress,
    TResult Function(_FetchProfileError value)? error,
    TResult Function(_FetchProfileSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends ProfileState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$FetchProfileInProgressImplCopyWith<$Res> {
  factory _$$FetchProfileInProgressImplCopyWith(
          _$FetchProfileInProgressImpl value,
          $Res Function(_$FetchProfileInProgressImpl) then) =
      __$$FetchProfileInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchProfileInProgressImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$FetchProfileInProgressImpl>
    implements _$$FetchProfileInProgressImplCopyWith<$Res> {
  __$$FetchProfileInProgressImplCopyWithImpl(
      _$FetchProfileInProgressImpl _value,
      $Res Function(_$FetchProfileInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchProfileInProgressImpl extends _FetchProfileInProgress {
  const _$FetchProfileInProgressImpl() : super._();

  @override
  String toString() {
    return 'ProfileState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProfileInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String message) error,
    required TResult Function(UserModel userModel) success,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String message)? error,
    TResult? Function(UserModel userModel)? success,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String message)? error,
    TResult Function(UserModel userModel)? success,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchProfileInProgress value) inProgress,
    required TResult Function(_FetchProfileError value) error,
    required TResult Function(_FetchProfileSuccess value) success,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchProfileInProgress value)? inProgress,
    TResult? Function(_FetchProfileError value)? error,
    TResult? Function(_FetchProfileSuccess value)? success,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchProfileInProgress value)? inProgress,
    TResult Function(_FetchProfileError value)? error,
    TResult Function(_FetchProfileSuccess value)? success,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _FetchProfileInProgress extends ProfileState {
  const factory _FetchProfileInProgress() = _$FetchProfileInProgressImpl;
  const _FetchProfileInProgress._() : super._();
}

/// @nodoc
abstract class _$$FetchProfileErrorImplCopyWith<$Res> {
  factory _$$FetchProfileErrorImplCopyWith(_$FetchProfileErrorImpl value,
          $Res Function(_$FetchProfileErrorImpl) then) =
      __$$FetchProfileErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FetchProfileErrorImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$FetchProfileErrorImpl>
    implements _$$FetchProfileErrorImplCopyWith<$Res> {
  __$$FetchProfileErrorImplCopyWithImpl(_$FetchProfileErrorImpl _value,
      $Res Function(_$FetchProfileErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FetchProfileErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchProfileErrorImpl extends _FetchProfileError {
  const _$FetchProfileErrorImpl({this.message = 'Произошла ошибка'})
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ProfileState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProfileErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchProfileErrorImplCopyWith<_$FetchProfileErrorImpl> get copyWith =>
      __$$FetchProfileErrorImplCopyWithImpl<_$FetchProfileErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String message) error,
    required TResult Function(UserModel userModel) success,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String message)? error,
    TResult? Function(UserModel userModel)? success,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String message)? error,
    TResult Function(UserModel userModel)? success,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchProfileInProgress value) inProgress,
    required TResult Function(_FetchProfileError value) error,
    required TResult Function(_FetchProfileSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchProfileInProgress value)? inProgress,
    TResult? Function(_FetchProfileError value)? error,
    TResult? Function(_FetchProfileSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchProfileInProgress value)? inProgress,
    TResult Function(_FetchProfileError value)? error,
    TResult Function(_FetchProfileSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FetchProfileError extends ProfileState {
  const factory _FetchProfileError({final String message}) =
      _$FetchProfileErrorImpl;
  const _FetchProfileError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$FetchProfileErrorImplCopyWith<_$FetchProfileErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchProfileSuccessImplCopyWith<$Res> {
  factory _$$FetchProfileSuccessImplCopyWith(_$FetchProfileSuccessImpl value,
          $Res Function(_$FetchProfileSuccessImpl) then) =
      __$$FetchProfileSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel userModel});
}

/// @nodoc
class __$$FetchProfileSuccessImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$FetchProfileSuccessImpl>
    implements _$$FetchProfileSuccessImplCopyWith<$Res> {
  __$$FetchProfileSuccessImplCopyWithImpl(_$FetchProfileSuccessImpl _value,
      $Res Function(_$FetchProfileSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = null,
  }) {
    return _then(_$FetchProfileSuccessImpl(
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$FetchProfileSuccessImpl extends _FetchProfileSuccess {
  const _$FetchProfileSuccessImpl({required this.userModel}) : super._();

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'ProfileState.success(userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProfileSuccessImpl &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchProfileSuccessImplCopyWith<_$FetchProfileSuccessImpl> get copyWith =>
      __$$FetchProfileSuccessImplCopyWithImpl<_$FetchProfileSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String message) error,
    required TResult Function(UserModel userModel) success,
  }) {
    return success(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(String message)? error,
    TResult? Function(UserModel userModel)? success,
  }) {
    return success?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String message)? error,
    TResult Function(UserModel userModel)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchProfileInProgress value) inProgress,
    required TResult Function(_FetchProfileError value) error,
    required TResult Function(_FetchProfileSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchProfileInProgress value)? inProgress,
    TResult? Function(_FetchProfileError value)? error,
    TResult? Function(_FetchProfileSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchProfileInProgress value)? inProgress,
    TResult Function(_FetchProfileError value)? error,
    TResult Function(_FetchProfileSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FetchProfileSuccess extends ProfileState {
  const factory _FetchProfileSuccess({required final UserModel userModel}) =
      _$FetchProfileSuccessImpl;
  const _FetchProfileSuccess._() : super._();

  UserModel get userModel;
  @JsonKey(ignore: true)
  _$$FetchProfileSuccessImplCopyWith<_$FetchProfileSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
