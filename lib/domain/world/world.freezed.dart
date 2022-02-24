// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'world.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WorldTearOff {
  const _$WorldTearOff();

  _World call({required CoverURL coverURL, required UniqueID uid}) {
    return _World(
      coverURL: coverURL,
      uid: uid,
    );
  }
}

/// @nodoc
const $World = _$WorldTearOff();

/// @nodoc
mixin _$World {
  CoverURL get coverURL => throw _privateConstructorUsedError;
  UniqueID get uid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorldCopyWith<World> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorldCopyWith<$Res> {
  factory $WorldCopyWith(World value, $Res Function(World) then) =
      _$WorldCopyWithImpl<$Res>;
  $Res call({CoverURL coverURL, UniqueID uid});
}

/// @nodoc
class _$WorldCopyWithImpl<$Res> implements $WorldCopyWith<$Res> {
  _$WorldCopyWithImpl(this._value, this._then);

  final World _value;
  // ignore: unused_field
  final $Res Function(World) _then;

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
abstract class _$WorldCopyWith<$Res> implements $WorldCopyWith<$Res> {
  factory _$WorldCopyWith(_World value, $Res Function(_World) then) =
      __$WorldCopyWithImpl<$Res>;
  @override
  $Res call({CoverURL coverURL, UniqueID uid});
}

/// @nodoc
class __$WorldCopyWithImpl<$Res> extends _$WorldCopyWithImpl<$Res>
    implements _$WorldCopyWith<$Res> {
  __$WorldCopyWithImpl(_World _value, $Res Function(_World) _then)
      : super(_value, (v) => _then(v as _World));

  @override
  _World get _value => super._value as _World;

  @override
  $Res call({
    Object? coverURL = freezed,
    Object? uid = freezed,
  }) {
    return _then(_World(
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

class _$_World implements _World {
  _$_World({required this.coverURL, required this.uid});

  @override
  final CoverURL coverURL;
  @override
  final UniqueID uid;

  @override
  String toString() {
    return 'World(coverURL: $coverURL, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _World &&
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
  _$WorldCopyWith<_World> get copyWith =>
      __$WorldCopyWithImpl<_World>(this, _$identity);
}

abstract class _World implements World {
  factory _World({required CoverURL coverURL, required UniqueID uid}) =
      _$_World;

  @override
  CoverURL get coverURL;
  @override
  UniqueID get uid;
  @override
  @JsonKey(ignore: true)
  _$WorldCopyWith<_World> get copyWith => throw _privateConstructorUsedError;
}
