// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserProfileEditEvent {
  UserModel get request => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel request) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel request)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel request)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateUserProfileEditEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateUserProfileEditEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateUserProfileEditEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserProfileEditEventCopyWith<UserProfileEditEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileEditEventCopyWith<$Res> {
  factory $UserProfileEditEventCopyWith(UserProfileEditEvent value,
          $Res Function(UserProfileEditEvent) then) =
      _$UserProfileEditEventCopyWithImpl<$Res, UserProfileEditEvent>;
  @useResult
  $Res call({UserModel request});
}

/// @nodoc
class _$UserProfileEditEventCopyWithImpl<$Res,
        $Val extends UserProfileEditEvent>
    implements $UserProfileEditEventCopyWith<$Res> {
  _$UserProfileEditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_value.copyWith(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateUserProfileEditEventImplCopyWith<$Res>
    implements $UserProfileEditEventCopyWith<$Res> {
  factory _$$UpdateUserProfileEditEventImplCopyWith(
          _$UpdateUserProfileEditEventImpl value,
          $Res Function(_$UpdateUserProfileEditEventImpl) then) =
      __$$UpdateUserProfileEditEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel request});
}

/// @nodoc
class __$$UpdateUserProfileEditEventImplCopyWithImpl<$Res>
    extends _$UserProfileEditEventCopyWithImpl<$Res,
        _$UpdateUserProfileEditEventImpl>
    implements _$$UpdateUserProfileEditEventImplCopyWith<$Res> {
  __$$UpdateUserProfileEditEventImplCopyWithImpl(
      _$UpdateUserProfileEditEventImpl _value,
      $Res Function(_$UpdateUserProfileEditEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$UpdateUserProfileEditEventImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$UpdateUserProfileEditEventImpl extends _UpdateUserProfileEditEvent {
  const _$UpdateUserProfileEditEventImpl({required this.request}) : super._();

  @override
  final UserModel request;

  @override
  String toString() {
    return 'UserProfileEditEvent.update(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserProfileEditEventImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserProfileEditEventImplCopyWith<_$UpdateUserProfileEditEventImpl>
      get copyWith => __$$UpdateUserProfileEditEventImplCopyWithImpl<
          _$UpdateUserProfileEditEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel request) update,
  }) {
    return update(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel request)? update,
  }) {
    return update?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel request)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateUserProfileEditEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateUserProfileEditEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateUserProfileEditEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserProfileEditEvent extends UserProfileEditEvent {
  const factory _UpdateUserProfileEditEvent(
      {required final UserModel request}) = _$UpdateUserProfileEditEventImpl;
  const _UpdateUserProfileEditEvent._() : super._();

  @override
  UserModel get request;
  @override
  @JsonKey(ignore: true)
  _$$UpdateUserProfileEditEventImplCopyWith<_$UpdateUserProfileEditEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserProfileEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updateProfileInProgress,
    required TResult Function() updateSuccess,
    required TResult Function(String message) updateProfileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updateProfileInProgress,
    TResult? Function()? updateSuccess,
    TResult? Function(String message)? updateProfileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateProfileInProgress,
    TResult Function()? updateSuccess,
    TResult Function(String message)? updateProfileError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserProfileEditState value) initial,
    required TResult Function(
            _UpdateProfileInProgressUserProfileEditState value)
        updateProfileInProgress,
    required TResult Function(_UpdateSuccessUserProfileEditState value)
        updateSuccess,
    required TResult Function(_UpdateProfileErrorUserProfileEditState value)
        updateProfileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUserProfileEditState value)? initial,
    TResult? Function(_UpdateProfileInProgressUserProfileEditState value)?
        updateProfileInProgress,
    TResult? Function(_UpdateSuccessUserProfileEditState value)? updateSuccess,
    TResult? Function(_UpdateProfileErrorUserProfileEditState value)?
        updateProfileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserProfileEditState value)? initial,
    TResult Function(_UpdateProfileInProgressUserProfileEditState value)?
        updateProfileInProgress,
    TResult Function(_UpdateSuccessUserProfileEditState value)? updateSuccess,
    TResult Function(_UpdateProfileErrorUserProfileEditState value)?
        updateProfileError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileEditStateCopyWith<$Res> {
  factory $UserProfileEditStateCopyWith(UserProfileEditState value,
          $Res Function(UserProfileEditState) then) =
      _$UserProfileEditStateCopyWithImpl<$Res, UserProfileEditState>;
}

/// @nodoc
class _$UserProfileEditStateCopyWithImpl<$Res,
        $Val extends UserProfileEditState>
    implements $UserProfileEditStateCopyWith<$Res> {
  _$UserProfileEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialUserProfileEditStateImplCopyWith<$Res> {
  factory _$$InitialUserProfileEditStateImplCopyWith(
          _$InitialUserProfileEditStateImpl value,
          $Res Function(_$InitialUserProfileEditStateImpl) then) =
      __$$InitialUserProfileEditStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialUserProfileEditStateImplCopyWithImpl<$Res>
    extends _$UserProfileEditStateCopyWithImpl<$Res,
        _$InitialUserProfileEditStateImpl>
    implements _$$InitialUserProfileEditStateImplCopyWith<$Res> {
  __$$InitialUserProfileEditStateImplCopyWithImpl(
      _$InitialUserProfileEditStateImpl _value,
      $Res Function(_$InitialUserProfileEditStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialUserProfileEditStateImpl extends _InitialUserProfileEditState {
  const _$InitialUserProfileEditStateImpl() : super._();

  @override
  String toString() {
    return 'UserProfileEditState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialUserProfileEditStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updateProfileInProgress,
    required TResult Function() updateSuccess,
    required TResult Function(String message) updateProfileError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updateProfileInProgress,
    TResult? Function()? updateSuccess,
    TResult? Function(String message)? updateProfileError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateProfileInProgress,
    TResult Function()? updateSuccess,
    TResult Function(String message)? updateProfileError,
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
    required TResult Function(_InitialUserProfileEditState value) initial,
    required TResult Function(
            _UpdateProfileInProgressUserProfileEditState value)
        updateProfileInProgress,
    required TResult Function(_UpdateSuccessUserProfileEditState value)
        updateSuccess,
    required TResult Function(_UpdateProfileErrorUserProfileEditState value)
        updateProfileError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUserProfileEditState value)? initial,
    TResult? Function(_UpdateProfileInProgressUserProfileEditState value)?
        updateProfileInProgress,
    TResult? Function(_UpdateSuccessUserProfileEditState value)? updateSuccess,
    TResult? Function(_UpdateProfileErrorUserProfileEditState value)?
        updateProfileError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserProfileEditState value)? initial,
    TResult Function(_UpdateProfileInProgressUserProfileEditState value)?
        updateProfileInProgress,
    TResult Function(_UpdateSuccessUserProfileEditState value)? updateSuccess,
    TResult Function(_UpdateProfileErrorUserProfileEditState value)?
        updateProfileError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialUserProfileEditState extends UserProfileEditState {
  const factory _InitialUserProfileEditState() =
      _$InitialUserProfileEditStateImpl;
  const _InitialUserProfileEditState._() : super._();
}

/// @nodoc
abstract class _$$UpdateProfileInProgressUserProfileEditStateImplCopyWith<
    $Res> {
  factory _$$UpdateProfileInProgressUserProfileEditStateImplCopyWith(
          _$UpdateProfileInProgressUserProfileEditStateImpl value,
          $Res Function(_$UpdateProfileInProgressUserProfileEditStateImpl)
              then) =
      __$$UpdateProfileInProgressUserProfileEditStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateProfileInProgressUserProfileEditStateImplCopyWithImpl<$Res>
    extends _$UserProfileEditStateCopyWithImpl<$Res,
        _$UpdateProfileInProgressUserProfileEditStateImpl>
    implements
        _$$UpdateProfileInProgressUserProfileEditStateImplCopyWith<$Res> {
  __$$UpdateProfileInProgressUserProfileEditStateImplCopyWithImpl(
      _$UpdateProfileInProgressUserProfileEditStateImpl _value,
      $Res Function(_$UpdateProfileInProgressUserProfileEditStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateProfileInProgressUserProfileEditStateImpl
    extends _UpdateProfileInProgressUserProfileEditState {
  const _$UpdateProfileInProgressUserProfileEditStateImpl() : super._();

  @override
  String toString() {
    return 'UserProfileEditState.updateProfileInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileInProgressUserProfileEditStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updateProfileInProgress,
    required TResult Function() updateSuccess,
    required TResult Function(String message) updateProfileError,
  }) {
    return updateProfileInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updateProfileInProgress,
    TResult? Function()? updateSuccess,
    TResult? Function(String message)? updateProfileError,
  }) {
    return updateProfileInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateProfileInProgress,
    TResult Function()? updateSuccess,
    TResult Function(String message)? updateProfileError,
    required TResult orElse(),
  }) {
    if (updateProfileInProgress != null) {
      return updateProfileInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserProfileEditState value) initial,
    required TResult Function(
            _UpdateProfileInProgressUserProfileEditState value)
        updateProfileInProgress,
    required TResult Function(_UpdateSuccessUserProfileEditState value)
        updateSuccess,
    required TResult Function(_UpdateProfileErrorUserProfileEditState value)
        updateProfileError,
  }) {
    return updateProfileInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUserProfileEditState value)? initial,
    TResult? Function(_UpdateProfileInProgressUserProfileEditState value)?
        updateProfileInProgress,
    TResult? Function(_UpdateSuccessUserProfileEditState value)? updateSuccess,
    TResult? Function(_UpdateProfileErrorUserProfileEditState value)?
        updateProfileError,
  }) {
    return updateProfileInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserProfileEditState value)? initial,
    TResult Function(_UpdateProfileInProgressUserProfileEditState value)?
        updateProfileInProgress,
    TResult Function(_UpdateSuccessUserProfileEditState value)? updateSuccess,
    TResult Function(_UpdateProfileErrorUserProfileEditState value)?
        updateProfileError,
    required TResult orElse(),
  }) {
    if (updateProfileInProgress != null) {
      return updateProfileInProgress(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfileInProgressUserProfileEditState
    extends UserProfileEditState {
  const factory _UpdateProfileInProgressUserProfileEditState() =
      _$UpdateProfileInProgressUserProfileEditStateImpl;
  const _UpdateProfileInProgressUserProfileEditState._() : super._();
}

/// @nodoc
abstract class _$$UpdateSuccessUserProfileEditStateImplCopyWith<$Res> {
  factory _$$UpdateSuccessUserProfileEditStateImplCopyWith(
          _$UpdateSuccessUserProfileEditStateImpl value,
          $Res Function(_$UpdateSuccessUserProfileEditStateImpl) then) =
      __$$UpdateSuccessUserProfileEditStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateSuccessUserProfileEditStateImplCopyWithImpl<$Res>
    extends _$UserProfileEditStateCopyWithImpl<$Res,
        _$UpdateSuccessUserProfileEditStateImpl>
    implements _$$UpdateSuccessUserProfileEditStateImplCopyWith<$Res> {
  __$$UpdateSuccessUserProfileEditStateImplCopyWithImpl(
      _$UpdateSuccessUserProfileEditStateImpl _value,
      $Res Function(_$UpdateSuccessUserProfileEditStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateSuccessUserProfileEditStateImpl
    extends _UpdateSuccessUserProfileEditState {
  const _$UpdateSuccessUserProfileEditStateImpl() : super._();

  @override
  String toString() {
    return 'UserProfileEditState.updateSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSuccessUserProfileEditStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updateProfileInProgress,
    required TResult Function() updateSuccess,
    required TResult Function(String message) updateProfileError,
  }) {
    return updateSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updateProfileInProgress,
    TResult? Function()? updateSuccess,
    TResult? Function(String message)? updateProfileError,
  }) {
    return updateSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateProfileInProgress,
    TResult Function()? updateSuccess,
    TResult Function(String message)? updateProfileError,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserProfileEditState value) initial,
    required TResult Function(
            _UpdateProfileInProgressUserProfileEditState value)
        updateProfileInProgress,
    required TResult Function(_UpdateSuccessUserProfileEditState value)
        updateSuccess,
    required TResult Function(_UpdateProfileErrorUserProfileEditState value)
        updateProfileError,
  }) {
    return updateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUserProfileEditState value)? initial,
    TResult? Function(_UpdateProfileInProgressUserProfileEditState value)?
        updateProfileInProgress,
    TResult? Function(_UpdateSuccessUserProfileEditState value)? updateSuccess,
    TResult? Function(_UpdateProfileErrorUserProfileEditState value)?
        updateProfileError,
  }) {
    return updateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserProfileEditState value)? initial,
    TResult Function(_UpdateProfileInProgressUserProfileEditState value)?
        updateProfileInProgress,
    TResult Function(_UpdateSuccessUserProfileEditState value)? updateSuccess,
    TResult Function(_UpdateProfileErrorUserProfileEditState value)?
        updateProfileError,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateSuccessUserProfileEditState extends UserProfileEditState {
  const factory _UpdateSuccessUserProfileEditState() =
      _$UpdateSuccessUserProfileEditStateImpl;
  const _UpdateSuccessUserProfileEditState._() : super._();
}

/// @nodoc
abstract class _$$UpdateProfileErrorUserProfileEditStateImplCopyWith<$Res> {
  factory _$$UpdateProfileErrorUserProfileEditStateImplCopyWith(
          _$UpdateProfileErrorUserProfileEditStateImpl value,
          $Res Function(_$UpdateProfileErrorUserProfileEditStateImpl) then) =
      __$$UpdateProfileErrorUserProfileEditStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UpdateProfileErrorUserProfileEditStateImplCopyWithImpl<$Res>
    extends _$UserProfileEditStateCopyWithImpl<$Res,
        _$UpdateProfileErrorUserProfileEditStateImpl>
    implements _$$UpdateProfileErrorUserProfileEditStateImplCopyWith<$Res> {
  __$$UpdateProfileErrorUserProfileEditStateImplCopyWithImpl(
      _$UpdateProfileErrorUserProfileEditStateImpl _value,
      $Res Function(_$UpdateProfileErrorUserProfileEditStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UpdateProfileErrorUserProfileEditStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateProfileErrorUserProfileEditStateImpl
    extends _UpdateProfileErrorUserProfileEditState {
  const _$UpdateProfileErrorUserProfileEditStateImpl(
      {this.message = 'Произошла ошибка'})
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'UserProfileEditState.updateProfileError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileErrorUserProfileEditStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileErrorUserProfileEditStateImplCopyWith<
          _$UpdateProfileErrorUserProfileEditStateImpl>
      get copyWith =>
          __$$UpdateProfileErrorUserProfileEditStateImplCopyWithImpl<
              _$UpdateProfileErrorUserProfileEditStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updateProfileInProgress,
    required TResult Function() updateSuccess,
    required TResult Function(String message) updateProfileError,
  }) {
    return updateProfileError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updateProfileInProgress,
    TResult? Function()? updateSuccess,
    TResult? Function(String message)? updateProfileError,
  }) {
    return updateProfileError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateProfileInProgress,
    TResult Function()? updateSuccess,
    TResult Function(String message)? updateProfileError,
    required TResult orElse(),
  }) {
    if (updateProfileError != null) {
      return updateProfileError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserProfileEditState value) initial,
    required TResult Function(
            _UpdateProfileInProgressUserProfileEditState value)
        updateProfileInProgress,
    required TResult Function(_UpdateSuccessUserProfileEditState value)
        updateSuccess,
    required TResult Function(_UpdateProfileErrorUserProfileEditState value)
        updateProfileError,
  }) {
    return updateProfileError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUserProfileEditState value)? initial,
    TResult? Function(_UpdateProfileInProgressUserProfileEditState value)?
        updateProfileInProgress,
    TResult? Function(_UpdateSuccessUserProfileEditState value)? updateSuccess,
    TResult? Function(_UpdateProfileErrorUserProfileEditState value)?
        updateProfileError,
  }) {
    return updateProfileError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserProfileEditState value)? initial,
    TResult Function(_UpdateProfileInProgressUserProfileEditState value)?
        updateProfileInProgress,
    TResult Function(_UpdateSuccessUserProfileEditState value)? updateSuccess,
    TResult Function(_UpdateProfileErrorUserProfileEditState value)?
        updateProfileError,
    required TResult orElse(),
  }) {
    if (updateProfileError != null) {
      return updateProfileError(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfileErrorUserProfileEditState
    extends UserProfileEditState {
  const factory _UpdateProfileErrorUserProfileEditState(
      {final String message}) = _$UpdateProfileErrorUserProfileEditStateImpl;
  const _UpdateProfileErrorUserProfileEditState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$UpdateProfileErrorUserProfileEditStateImplCopyWith<
          _$UpdateProfileErrorUserProfileEditStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
