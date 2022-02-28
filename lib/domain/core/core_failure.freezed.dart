// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'core_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoreFailureTearOff {
  const _$CoreFailureTearOff();

  _Settings settings(SettingsFailure f) {
    return _Settings(
      f,
    );
  }
}

/// @nodoc
const $CoreFailure = _$CoreFailureTearOff();

/// @nodoc
mixin _$CoreFailure {
  SettingsFailure get f => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsFailure f) settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SettingsFailure f)? settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsFailure f)? settings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Settings value) settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Settings value)? settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Settings value)? settings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoreFailureCopyWith<CoreFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreFailureCopyWith<$Res> {
  factory $CoreFailureCopyWith(
          CoreFailure value, $Res Function(CoreFailure) then) =
      _$CoreFailureCopyWithImpl<$Res>;
  $Res call({SettingsFailure f});

  $SettingsFailureCopyWith<$Res> get f;
}

/// @nodoc
class _$CoreFailureCopyWithImpl<$Res> implements $CoreFailureCopyWith<$Res> {
  _$CoreFailureCopyWithImpl(this._value, this._then);

  final CoreFailure _value;
  // ignore: unused_field
  final $Res Function(CoreFailure) _then;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_value.copyWith(
      f: f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as SettingsFailure,
    ));
  }

  @override
  $SettingsFailureCopyWith<$Res> get f {
    return $SettingsFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc
abstract class _$SettingsCopyWith<$Res> implements $CoreFailureCopyWith<$Res> {
  factory _$SettingsCopyWith(_Settings value, $Res Function(_Settings) then) =
      __$SettingsCopyWithImpl<$Res>;
  @override
  $Res call({SettingsFailure f});

  @override
  $SettingsFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$SettingsCopyWithImpl<$Res> extends _$CoreFailureCopyWithImpl<$Res>
    implements _$SettingsCopyWith<$Res> {
  __$SettingsCopyWithImpl(_Settings _value, $Res Function(_Settings) _then)
      : super(_value, (v) => _then(v as _Settings));

  @override
  _Settings get _value => super._value as _Settings;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_Settings(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as SettingsFailure,
    ));
  }
}

/// @nodoc

class _$_Settings implements _Settings {
  const _$_Settings(this.f);

  @override
  final SettingsFailure f;

  @override
  String toString() {
    return 'CoreFailure.settings(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Settings &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$SettingsCopyWith<_Settings> get copyWith =>
      __$SettingsCopyWithImpl<_Settings>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsFailure f) settings,
  }) {
    return settings(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SettingsFailure f)? settings,
  }) {
    return settings?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsFailure f)? settings,
    required TResult orElse(),
  }) {
    if (settings != null) {
      return settings(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Settings value) settings,
  }) {
    return settings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Settings value)? settings,
  }) {
    return settings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Settings value)? settings,
    required TResult orElse(),
  }) {
    if (settings != null) {
      return settings(this);
    }
    return orElse();
  }
}

abstract class _Settings implements CoreFailure {
  const factory _Settings(SettingsFailure f) = _$_Settings;

  @override
  SettingsFailure get f;
  @override
  @JsonKey(ignore: true)
  _$SettingsCopyWith<_Settings> get copyWith =>
      throw _privateConstructorUsedError;
}
