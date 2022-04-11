// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'universe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UniverseTearOff {
  const _$UniverseTearOff();

  _Universe call({required CoverURL coverURL, required UniqueID uid}) {
    return _Universe(
      coverURL: coverURL,
      uid: uid,
    );
  }
}

/// @nodoc
const $Universe = _$UniverseTearOff();

/// @nodoc
mixin _$Universe {
  CoverURL get coverURL => throw _privateConstructorUsedError;
  UniqueID get uid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UniverseCopyWith<Universe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniverseCopyWith<$Res> {
  factory $UniverseCopyWith(Universe value, $Res Function(Universe) then) =
      _$UniverseCopyWithImpl<$Res>;
  $Res call({CoverURL coverURL, UniqueID uid});
}

/// @nodoc
class _$UniverseCopyWithImpl<$Res> implements $UniverseCopyWith<$Res> {
  _$UniverseCopyWithImpl(this._value, this._then);

  final Universe _value;
  // ignore: unused_field
  final $Res Function(Universe) _then;

  @override
  $Res call({
    Object? coverURL = freezed,
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      coverURL: coverURL == freezed
          ? _value.coverURL
          : coverURL // ignore: cast_nullable_to_non_nullable
              as CoverURL,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as UniqueID,
    ));
  }
}

/// @nodoc
abstract class _$UniverseCopyWith<$Res> implements $UniverseCopyWith<$Res> {
  factory _$UniverseCopyWith(_Universe value, $Res Function(_Universe) then) =
      __$UniverseCopyWithImpl<$Res>;
  @override
  $Res call({CoverURL coverURL, UniqueID uid});
}

/// @nodoc
class __$UniverseCopyWithImpl<$Res> extends _$UniverseCopyWithImpl<$Res>
    implements _$UniverseCopyWith<$Res> {
  __$UniverseCopyWithImpl(_Universe _value, $Res Function(_Universe) _then)
      : super(_value, (v) => _then(v as _Universe));

  @override
  _Universe get _value => super._value as _Universe;

  @override
  $Res call({
    Object? coverURL = freezed,
    Object? uid = freezed,
  }) {
    return _then(_Universe(
      coverURL: coverURL == freezed
          ? _value.coverURL
          : coverURL // ignore: cast_nullable_to_non_nullable
              as CoverURL,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as UniqueID,
    ));
  }
}

/// @nodoc

class _$_Universe implements _Universe {
  _$_Universe({required this.coverURL, required this.uid});

  @override
  final CoverURL coverURL;
  @override
  final UniqueID uid;

  @override
  String toString() {
    return 'Universe(coverURL: $coverURL, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Universe &&
            const DeepCollectionEquality().equals(other.coverURL, coverURL) &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(coverURL),
      const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$UniverseCopyWith<_Universe> get copyWith =>
      __$UniverseCopyWithImpl<_Universe>(this, _$identity);
}

abstract class _Universe implements Universe {
  factory _Universe({required CoverURL coverURL, required UniqueID uid}) =
      _$_Universe;

  @override
  CoverURL get coverURL;
  @override
  UniqueID get uid;
  @override
  @JsonKey(ignore: true)
  _$UniverseCopyWith<_Universe> get copyWith =>
      throw _privateConstructorUsedError;
}
