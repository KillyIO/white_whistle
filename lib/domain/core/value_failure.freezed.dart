// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  EmptyInput<T> emptyInput<T>(T failedValue) {
    return EmptyInput<T>(
      failedValue,
    );
  }

  InvalidCoverFile<T> invalidCoverFile<T>(T failureValue) {
    return InvalidCoverFile<T>(
      failureValue,
    );
  }

  InvalidCoverURL<T> invalidCoverURL<T>(T failedValue) {
    return InvalidCoverURL<T>(
      failedValue,
    );
  }

  InvalidUniqueID<T> invalidUniqueID<T>(T failedValue) {
    return InvalidUniqueID<T>(
      failedValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyInput,
    required TResult Function(T failureValue) invalidCoverFile,
    required TResult Function(T failedValue) invalidCoverURL,
    required TResult Function(T failedValue) invalidUniqueID,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyInput,
    TResult Function(T failureValue)? invalidCoverFile,
    TResult Function(T failedValue)? invalidCoverURL,
    TResult Function(T failedValue)? invalidUniqueID,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyInput,
    TResult Function(T failureValue)? invalidCoverFile,
    TResult Function(T failedValue)? invalidCoverURL,
    TResult Function(T failedValue)? invalidUniqueID,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyInput<T> value) emptyInput,
    required TResult Function(InvalidCoverFile<T> value) invalidCoverFile,
    required TResult Function(InvalidCoverURL<T> value) invalidCoverURL,
    required TResult Function(InvalidUniqueID<T> value) invalidUniqueID,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyInput<T> value)? emptyInput,
    TResult Function(InvalidCoverFile<T> value)? invalidCoverFile,
    TResult Function(InvalidCoverURL<T> value)? invalidCoverURL,
    TResult Function(InvalidUniqueID<T> value)? invalidUniqueID,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyInput<T> value)? emptyInput,
    TResult Function(InvalidCoverFile<T> value)? invalidCoverFile,
    TResult Function(InvalidCoverURL<T> value)? invalidCoverURL,
    TResult Function(InvalidUniqueID<T> value)? invalidUniqueID,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $EmptyInputCopyWith<T, $Res> {
  factory $EmptyInputCopyWith(
          EmptyInput<T> value, $Res Function(EmptyInput<T>) then) =
      _$EmptyInputCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyInputCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyInputCopyWith<T, $Res> {
  _$EmptyInputCopyWithImpl(
      EmptyInput<T> _value, $Res Function(EmptyInput<T>) _then)
      : super(_value, (v) => _then(v as EmptyInput<T>));

  @override
  EmptyInput<T> get _value => super._value as EmptyInput<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(EmptyInput<T>(
      failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmptyInput<T> implements EmptyInput<T> {
  const _$EmptyInput(this.failedValue);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.emptyInput(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmptyInput<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $EmptyInputCopyWith<T, EmptyInput<T>> get copyWith =>
      _$EmptyInputCopyWithImpl<T, EmptyInput<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyInput,
    required TResult Function(T failureValue) invalidCoverFile,
    required TResult Function(T failedValue) invalidCoverURL,
    required TResult Function(T failedValue) invalidUniqueID,
  }) {
    return emptyInput(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyInput,
    TResult Function(T failureValue)? invalidCoverFile,
    TResult Function(T failedValue)? invalidCoverURL,
    TResult Function(T failedValue)? invalidUniqueID,
  }) {
    return emptyInput?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyInput,
    TResult Function(T failureValue)? invalidCoverFile,
    TResult Function(T failedValue)? invalidCoverURL,
    TResult Function(T failedValue)? invalidUniqueID,
    required TResult orElse(),
  }) {
    if (emptyInput != null) {
      return emptyInput(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyInput<T> value) emptyInput,
    required TResult Function(InvalidCoverFile<T> value) invalidCoverFile,
    required TResult Function(InvalidCoverURL<T> value) invalidCoverURL,
    required TResult Function(InvalidUniqueID<T> value) invalidUniqueID,
  }) {
    return emptyInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyInput<T> value)? emptyInput,
    TResult Function(InvalidCoverFile<T> value)? invalidCoverFile,
    TResult Function(InvalidCoverURL<T> value)? invalidCoverURL,
    TResult Function(InvalidUniqueID<T> value)? invalidUniqueID,
  }) {
    return emptyInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyInput<T> value)? emptyInput,
    TResult Function(InvalidCoverFile<T> value)? invalidCoverFile,
    TResult Function(InvalidCoverURL<T> value)? invalidCoverURL,
    TResult Function(InvalidUniqueID<T> value)? invalidUniqueID,
    required TResult orElse(),
  }) {
    if (emptyInput != null) {
      return emptyInput(this);
    }
    return orElse();
  }
}

abstract class EmptyInput<T> implements ValueFailure<T> {
  const factory EmptyInput(T failedValue) = _$EmptyInput<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $EmptyInputCopyWith<T, EmptyInput<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidCoverFileCopyWith<T, $Res> {
  factory $InvalidCoverFileCopyWith(
          InvalidCoverFile<T> value, $Res Function(InvalidCoverFile<T>) then) =
      _$InvalidCoverFileCopyWithImpl<T, $Res>;
  $Res call({T failureValue});
}

/// @nodoc
class _$InvalidCoverFileCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidCoverFileCopyWith<T, $Res> {
  _$InvalidCoverFileCopyWithImpl(
      InvalidCoverFile<T> _value, $Res Function(InvalidCoverFile<T>) _then)
      : super(_value, (v) => _then(v as InvalidCoverFile<T>));

  @override
  InvalidCoverFile<T> get _value => super._value as InvalidCoverFile<T>;

  @override
  $Res call({
    Object? failureValue = freezed,
  }) {
    return _then(InvalidCoverFile<T>(
      failureValue == freezed
          ? _value.failureValue
          : failureValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidCoverFile<T> implements InvalidCoverFile<T> {
  const _$InvalidCoverFile(this.failureValue);

  @override
  final T failureValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidCoverFile(failureValue: $failureValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidCoverFile<T> &&
            const DeepCollectionEquality()
                .equals(other.failureValue, failureValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureValue));

  @JsonKey(ignore: true)
  @override
  $InvalidCoverFileCopyWith<T, InvalidCoverFile<T>> get copyWith =>
      _$InvalidCoverFileCopyWithImpl<T, InvalidCoverFile<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyInput,
    required TResult Function(T failureValue) invalidCoverFile,
    required TResult Function(T failedValue) invalidCoverURL,
    required TResult Function(T failedValue) invalidUniqueID,
  }) {
    return invalidCoverFile(failureValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyInput,
    TResult Function(T failureValue)? invalidCoverFile,
    TResult Function(T failedValue)? invalidCoverURL,
    TResult Function(T failedValue)? invalidUniqueID,
  }) {
    return invalidCoverFile?.call(failureValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyInput,
    TResult Function(T failureValue)? invalidCoverFile,
    TResult Function(T failedValue)? invalidCoverURL,
    TResult Function(T failedValue)? invalidUniqueID,
    required TResult orElse(),
  }) {
    if (invalidCoverFile != null) {
      return invalidCoverFile(failureValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyInput<T> value) emptyInput,
    required TResult Function(InvalidCoverFile<T> value) invalidCoverFile,
    required TResult Function(InvalidCoverURL<T> value) invalidCoverURL,
    required TResult Function(InvalidUniqueID<T> value) invalidUniqueID,
  }) {
    return invalidCoverFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyInput<T> value)? emptyInput,
    TResult Function(InvalidCoverFile<T> value)? invalidCoverFile,
    TResult Function(InvalidCoverURL<T> value)? invalidCoverURL,
    TResult Function(InvalidUniqueID<T> value)? invalidUniqueID,
  }) {
    return invalidCoverFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyInput<T> value)? emptyInput,
    TResult Function(InvalidCoverFile<T> value)? invalidCoverFile,
    TResult Function(InvalidCoverURL<T> value)? invalidCoverURL,
    TResult Function(InvalidUniqueID<T> value)? invalidUniqueID,
    required TResult orElse(),
  }) {
    if (invalidCoverFile != null) {
      return invalidCoverFile(this);
    }
    return orElse();
  }
}

abstract class InvalidCoverFile<T> implements ValueFailure<T> {
  const factory InvalidCoverFile(T failureValue) = _$InvalidCoverFile<T>;

  T get failureValue;
  @JsonKey(ignore: true)
  $InvalidCoverFileCopyWith<T, InvalidCoverFile<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidCoverURLCopyWith<T, $Res> {
  factory $InvalidCoverURLCopyWith(
          InvalidCoverURL<T> value, $Res Function(InvalidCoverURL<T>) then) =
      _$InvalidCoverURLCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidCoverURLCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidCoverURLCopyWith<T, $Res> {
  _$InvalidCoverURLCopyWithImpl(
      InvalidCoverURL<T> _value, $Res Function(InvalidCoverURL<T>) _then)
      : super(_value, (v) => _then(v as InvalidCoverURL<T>));

  @override
  InvalidCoverURL<T> get _value => super._value as InvalidCoverURL<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidCoverURL<T>(
      failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidCoverURL<T> implements InvalidCoverURL<T> {
  const _$InvalidCoverURL(this.failedValue);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidCoverURL(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidCoverURL<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidCoverURLCopyWith<T, InvalidCoverURL<T>> get copyWith =>
      _$InvalidCoverURLCopyWithImpl<T, InvalidCoverURL<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyInput,
    required TResult Function(T failureValue) invalidCoverFile,
    required TResult Function(T failedValue) invalidCoverURL,
    required TResult Function(T failedValue) invalidUniqueID,
  }) {
    return invalidCoverURL(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyInput,
    TResult Function(T failureValue)? invalidCoverFile,
    TResult Function(T failedValue)? invalidCoverURL,
    TResult Function(T failedValue)? invalidUniqueID,
  }) {
    return invalidCoverURL?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyInput,
    TResult Function(T failureValue)? invalidCoverFile,
    TResult Function(T failedValue)? invalidCoverURL,
    TResult Function(T failedValue)? invalidUniqueID,
    required TResult orElse(),
  }) {
    if (invalidCoverURL != null) {
      return invalidCoverURL(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyInput<T> value) emptyInput,
    required TResult Function(InvalidCoverFile<T> value) invalidCoverFile,
    required TResult Function(InvalidCoverURL<T> value) invalidCoverURL,
    required TResult Function(InvalidUniqueID<T> value) invalidUniqueID,
  }) {
    return invalidCoverURL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyInput<T> value)? emptyInput,
    TResult Function(InvalidCoverFile<T> value)? invalidCoverFile,
    TResult Function(InvalidCoverURL<T> value)? invalidCoverURL,
    TResult Function(InvalidUniqueID<T> value)? invalidUniqueID,
  }) {
    return invalidCoverURL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyInput<T> value)? emptyInput,
    TResult Function(InvalidCoverFile<T> value)? invalidCoverFile,
    TResult Function(InvalidCoverURL<T> value)? invalidCoverURL,
    TResult Function(InvalidUniqueID<T> value)? invalidUniqueID,
    required TResult orElse(),
  }) {
    if (invalidCoverURL != null) {
      return invalidCoverURL(this);
    }
    return orElse();
  }
}

abstract class InvalidCoverURL<T> implements ValueFailure<T> {
  const factory InvalidCoverURL(T failedValue) = _$InvalidCoverURL<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $InvalidCoverURLCopyWith<T, InvalidCoverURL<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidUniqueIDCopyWith<T, $Res> {
  factory $InvalidUniqueIDCopyWith(
          InvalidUniqueID<T> value, $Res Function(InvalidUniqueID<T>) then) =
      _$InvalidUniqueIDCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidUniqueIDCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidUniqueIDCopyWith<T, $Res> {
  _$InvalidUniqueIDCopyWithImpl(
      InvalidUniqueID<T> _value, $Res Function(InvalidUniqueID<T>) _then)
      : super(_value, (v) => _then(v as InvalidUniqueID<T>));

  @override
  InvalidUniqueID<T> get _value => super._value as InvalidUniqueID<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidUniqueID<T>(
      failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidUniqueID<T> implements InvalidUniqueID<T> {
  const _$InvalidUniqueID(this.failedValue);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidUniqueID(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidUniqueID<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidUniqueIDCopyWith<T, InvalidUniqueID<T>> get copyWith =>
      _$InvalidUniqueIDCopyWithImpl<T, InvalidUniqueID<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyInput,
    required TResult Function(T failureValue) invalidCoverFile,
    required TResult Function(T failedValue) invalidCoverURL,
    required TResult Function(T failedValue) invalidUniqueID,
  }) {
    return invalidUniqueID(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyInput,
    TResult Function(T failureValue)? invalidCoverFile,
    TResult Function(T failedValue)? invalidCoverURL,
    TResult Function(T failedValue)? invalidUniqueID,
  }) {
    return invalidUniqueID?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyInput,
    TResult Function(T failureValue)? invalidCoverFile,
    TResult Function(T failedValue)? invalidCoverURL,
    TResult Function(T failedValue)? invalidUniqueID,
    required TResult orElse(),
  }) {
    if (invalidUniqueID != null) {
      return invalidUniqueID(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyInput<T> value) emptyInput,
    required TResult Function(InvalidCoverFile<T> value) invalidCoverFile,
    required TResult Function(InvalidCoverURL<T> value) invalidCoverURL,
    required TResult Function(InvalidUniqueID<T> value) invalidUniqueID,
  }) {
    return invalidUniqueID(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyInput<T> value)? emptyInput,
    TResult Function(InvalidCoverFile<T> value)? invalidCoverFile,
    TResult Function(InvalidCoverURL<T> value)? invalidCoverURL,
    TResult Function(InvalidUniqueID<T> value)? invalidUniqueID,
  }) {
    return invalidUniqueID?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyInput<T> value)? emptyInput,
    TResult Function(InvalidCoverFile<T> value)? invalidCoverFile,
    TResult Function(InvalidCoverURL<T> value)? invalidCoverURL,
    TResult Function(InvalidUniqueID<T> value)? invalidUniqueID,
    required TResult orElse(),
  }) {
    if (invalidUniqueID != null) {
      return invalidUniqueID(this);
    }
    return orElse();
  }
}

abstract class InvalidUniqueID<T> implements ValueFailure<T> {
  const factory InvalidUniqueID(T failedValue) = _$InvalidUniqueID<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $InvalidUniqueIDCopyWith<T, InvalidUniqueID<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
