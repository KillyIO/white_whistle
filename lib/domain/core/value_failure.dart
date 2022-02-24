import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

/// @nodoc
@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  /// @nodoc
  const factory ValueFailure.emptyInput(T failedValue) = EmptyInput<T>;

  /// @nodoc
  const factory ValueFailure.invalidCoverFile(T failureValue) =
      InvalidCoverFile<T>;

  /// @nodoc
  const factory ValueFailure.invalidCoverURL(T failedValue) =
      InvalidCoverURL<T>;

  /// @nodoc
  const factory ValueFailure.invalidUniqueID(T failedValue) =
      InvalidUniqueID<T>;
}
