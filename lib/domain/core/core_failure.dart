import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:white_whistle/domain/settings/settings_failure.dart';

part 'core_failure.freezed.dart';

/// @nodoc
@freezed
class CoreFailure with _$CoreFailure {
  /// @nodoc
  const factory CoreFailure.settings(SettingsFailure f) = _Settings;
}
