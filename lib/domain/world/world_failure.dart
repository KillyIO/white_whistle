import 'package:freezed_annotation/freezed_annotation.dart';

part 'world_failure.freezed.dart';

/// @nodoc#
@freezed
class WorldFailure with _$WorldFailure {
  /// @nodoc
  const factory WorldFailure.worldNotCreated() = WorldNotCreated;

  /// @nodoc
  const factory WorldFailure.worldNotDeleted() = WorldNotDeleted;

  /// @nodoc
  const factory WorldFailure.worldNotFound() = WorldNotFound;

  /// @nodoc
  const factory WorldFailure.worldNotUpdated() = WorldNotUpdated;
}
