import 'package:oxidized/oxidized.dart';
import 'package:white_whistle/domain/settings/settings.dart';
import 'package:white_whistle/domain/settings/settings_failure.dart';

/// @nodoc
abstract class ISettingsRepository {
  /// @nodoc
  Future<Result<Unit, SettingsFailure>> createSettings();

  /// @nodoc
  Future<Result<Unit, SettingsFailure>> deleteSettings();

  /// @nodoc
  Future<Result<Settings, SettingsFailure>> fetchSettings();

  /// @nodoc
  Future<Result<Unit, SettingsFailure>> updateSettings(Settings settings);
}
