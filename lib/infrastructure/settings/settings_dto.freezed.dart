// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingsDTO _$SettingsDTOFromJson(Map<String, dynamic> json) {
  return _SettingsDTO.fromJson(json);
}

/// @nodoc
class _$SettingsDTOTearOff {
  const _$SettingsDTOTearOff();

  _SettingsDTO call({required bool toggleDarkMode}) {
    return _SettingsDTO(
      toggleDarkMode: toggleDarkMode,
    );
  }

  SettingsDTO fromJson(Map<String, Object?> json) {
    return SettingsDTO.fromJson(json);
  }
}

/// @nodoc
const $SettingsDTO = _$SettingsDTOTearOff();

/// @nodoc
mixin _$SettingsDTO {
  bool get toggleDarkMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsDTOCopyWith<SettingsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsDTOCopyWith<$Res> {
  factory $SettingsDTOCopyWith(
          SettingsDTO value, $Res Function(SettingsDTO) then) =
      _$SettingsDTOCopyWithImpl<$Res>;
  $Res call({bool toggleDarkMode});
}

/// @nodoc
class _$SettingsDTOCopyWithImpl<$Res> implements $SettingsDTOCopyWith<$Res> {
  _$SettingsDTOCopyWithImpl(this._value, this._then);

  final SettingsDTO _value;
  // ignore: unused_field
  final $Res Function(SettingsDTO) _then;

  @override
  $Res call({
    Object? toggleDarkMode = freezed,
  }) {
    return _then(_value.copyWith(
      toggleDarkMode: toggleDarkMode == freezed
          ? _value.toggleDarkMode
          : toggleDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SettingsDTOCopyWith<$Res>
    implements $SettingsDTOCopyWith<$Res> {
  factory _$SettingsDTOCopyWith(
          _SettingsDTO value, $Res Function(_SettingsDTO) then) =
      __$SettingsDTOCopyWithImpl<$Res>;
  @override
  $Res call({bool toggleDarkMode});
}

/// @nodoc
class __$SettingsDTOCopyWithImpl<$Res> extends _$SettingsDTOCopyWithImpl<$Res>
    implements _$SettingsDTOCopyWith<$Res> {
  __$SettingsDTOCopyWithImpl(
      _SettingsDTO _value, $Res Function(_SettingsDTO) _then)
      : super(_value, (v) => _then(v as _SettingsDTO));

  @override
  _SettingsDTO get _value => super._value as _SettingsDTO;

  @override
  $Res call({
    Object? toggleDarkMode = freezed,
  }) {
    return _then(_SettingsDTO(
      toggleDarkMode: toggleDarkMode == freezed
          ? _value.toggleDarkMode
          : toggleDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SettingsDTO implements _SettingsDTO {
  _$_SettingsDTO({required this.toggleDarkMode});

  factory _$_SettingsDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SettingsDTOFromJson(json);

  @override
  final bool toggleDarkMode;

  @override
  String toString() {
    return 'SettingsDTO(toggleDarkMode: $toggleDarkMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingsDTO &&
            const DeepCollectionEquality()
                .equals(other.toggleDarkMode, toggleDarkMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(toggleDarkMode));

  @JsonKey(ignore: true)
  @override
  _$SettingsDTOCopyWith<_SettingsDTO> get copyWith =>
      __$SettingsDTOCopyWithImpl<_SettingsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingsDTOToJson(this);
  }
}

abstract class _SettingsDTO implements SettingsDTO {
  factory _SettingsDTO({required bool toggleDarkMode}) = _$_SettingsDTO;

  factory _SettingsDTO.fromJson(Map<String, dynamic> json) =
      _$_SettingsDTO.fromJson;

  @override
  bool get toggleDarkMode;
  @override
  @JsonKey(ignore: true)
  _$SettingsDTOCopyWith<_SettingsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}