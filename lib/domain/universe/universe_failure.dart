import 'package:freezed_annotation/freezed_annotation.dart';

part 'universe_failure.freezed.dart';

/// @nodoc#
@freezed
class UniverseFailure with _$UniverseFailure {
  /// @nodoc
  const factory UniverseFailure.universeNotCreated() = UniverseNotCreated;

  /// @nodoc
  const factory UniverseFailure.universeNotDeleted() = UniverseNotDeleted;

  /// @nodoc
  const factory UniverseFailure.universeNotFound() = UniverseNotFound;

  /// @nodoc
  const factory UniverseFailure.universeNotUpdated() = UniverseNotUpdated;
}
