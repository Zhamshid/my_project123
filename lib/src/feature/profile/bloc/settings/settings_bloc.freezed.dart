// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsData {
  AppLanguage get locale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsDataCopyWith<SettingsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsDataCopyWith<$Res> {
  factory $SettingsDataCopyWith(
          SettingsData value, $Res Function(SettingsData) then) =
      _$SettingsDataCopyWithImpl<$Res, SettingsData>;
  @useResult
  $Res call({AppLanguage locale});
}

/// @nodoc
class _$SettingsDataCopyWithImpl<$Res, $Val extends SettingsData>
    implements $SettingsDataCopyWith<$Res> {
  _$SettingsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_value.copyWith(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLanguage,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsDataImplCopyWith<$Res>
    implements $SettingsDataCopyWith<$Res> {
  factory _$$SettingsDataImplCopyWith(
          _$SettingsDataImpl value, $Res Function(_$SettingsDataImpl) then) =
      __$$SettingsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppLanguage locale});
}

/// @nodoc
class __$$SettingsDataImplCopyWithImpl<$Res>
    extends _$SettingsDataCopyWithImpl<$Res, _$SettingsDataImpl>
    implements _$$SettingsDataImplCopyWith<$Res> {
  __$$SettingsDataImplCopyWithImpl(
      _$SettingsDataImpl _value, $Res Function(_$SettingsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$SettingsDataImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLanguage,
    ));
  }
}

/// @nodoc

class _$SettingsDataImpl implements _SettingsData {
  const _$SettingsDataImpl({required this.locale});

  @override
  final AppLanguage locale;

  @override
  String toString() {
    return 'SettingsData(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsDataImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsDataImplCopyWith<_$SettingsDataImpl> get copyWith =>
      __$$SettingsDataImplCopyWithImpl<_$SettingsDataImpl>(this, _$identity);
}

abstract class _SettingsData implements SettingsData {
  const factory _SettingsData({required final AppLanguage locale}) =
      _$SettingsDataImpl;

  @override
  AppLanguage get locale;
  @override
  @JsonKey(ignore: true)
  _$$SettingsDataImplCopyWith<_$SettingsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsEvent {
  AppLanguage get locale => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppLanguage locale) setLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppLanguage locale)? setLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppLanguage locale)? setLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsEventSetLocale value) setLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEventSetLocale value)? setLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEventSetLocale value)? setLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsEventCopyWith<SettingsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
  @useResult
  $Res call({AppLanguage locale});
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_value.copyWith(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLanguage,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsEventSetLocaleImplCopyWith<$Res>
    implements $SettingsEventCopyWith<$Res> {
  factory _$$SettingsEventSetLocaleImplCopyWith(
          _$SettingsEventSetLocaleImpl value,
          $Res Function(_$SettingsEventSetLocaleImpl) then) =
      __$$SettingsEventSetLocaleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppLanguage locale});
}

/// @nodoc
class __$$SettingsEventSetLocaleImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsEventSetLocaleImpl>
    implements _$$SettingsEventSetLocaleImplCopyWith<$Res> {
  __$$SettingsEventSetLocaleImplCopyWithImpl(
      _$SettingsEventSetLocaleImpl _value,
      $Res Function(_$SettingsEventSetLocaleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$SettingsEventSetLocaleImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLanguage,
    ));
  }
}

/// @nodoc

class _$SettingsEventSetLocaleImpl implements _SettingsEventSetLocale {
  const _$SettingsEventSetLocaleImpl({required this.locale});

  @override
  final AppLanguage locale;

  @override
  String toString() {
    return 'SettingsEvent.setLocale(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsEventSetLocaleImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsEventSetLocaleImplCopyWith<_$SettingsEventSetLocaleImpl>
      get copyWith => __$$SettingsEventSetLocaleImplCopyWithImpl<
          _$SettingsEventSetLocaleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppLanguage locale) setLocale,
  }) {
    return setLocale(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppLanguage locale)? setLocale,
  }) {
    return setLocale?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppLanguage locale)? setLocale,
    required TResult orElse(),
  }) {
    if (setLocale != null) {
      return setLocale(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsEventSetLocale value) setLocale,
  }) {
    return setLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsEventSetLocale value)? setLocale,
  }) {
    return setLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsEventSetLocale value)? setLocale,
    required TResult orElse(),
  }) {
    if (setLocale != null) {
      return setLocale(this);
    }
    return orElse();
  }
}

abstract class _SettingsEventSetLocale implements SettingsEvent {
  const factory _SettingsEventSetLocale({required final AppLanguage locale}) =
      _$SettingsEventSetLocaleImpl;

  @override
  AppLanguage get locale;
  @override
  @JsonKey(ignore: true)
  _$$SettingsEventSetLocaleImplCopyWith<_$SettingsEventSetLocaleImpl>
      get copyWith => throw _privateConstructorUsedError;
}
