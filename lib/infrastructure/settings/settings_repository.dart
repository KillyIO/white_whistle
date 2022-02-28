import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:oxidized/oxidized.dart';
import 'package:white_whistle/domain/settings/i_settings_repository.dart';
import 'package:white_whistle/domain/settings/settings.dart';
import 'package:white_whistle/domain/settings/settings_failure.dart';
import 'package:white_whistle/infrastructure/settings/isar_settings.dart';
import 'package:white_whistle/infrastructure/settings/settings_dto.dart';

/// @nodoc
@LazySingleton(
  as: ISettingsRepository,
  env: [Environment.dev, Environment.prod],
)
class SettingsRepository implements ISettingsRepository {
  /// @nodoc
  SettingsRepository(
    this._isar,
  );

  final Isar _isar;

  @override
  Future<Result<Unit, SettingsFailure>> deleteSettings() async {
    return _isar.writeTxn((isar) async {
      final isDeleted = await isar.settings.delete(0);

      if (isDeleted) {
        return Ok(unit);
      }
      return Err(const SettingsFailure.settingsNotDeleted());
    });
  }

  @override
  Future<Result<Settings, SettingsFailure>> fetchSettings() async {
    final settings = await _isar.settings.get(0);

    if (settings != null) {
      return Ok(settings.toDomain());
    }
    return Err(const SettingsFailure.settingsNotFound());
  }

  @override
  Future<Result<Unit, SettingsFailure>> createSettings() async {
    return _isar.writeTxn((isar) async {
      final settings = await isar.settings.get(0);

      if (settings == null) {
        final id = await isar.settings.put(
          SettingsDTO.fromDomain(
            const Settings(
              toggleDarkMode: false,
            ),
          ).toAdapter().copyWith(id: 0),
        );

        if (id != 0) {
          return Err(const SettingsFailure.settingsNotInitialized());
        }
      }

      return Ok(unit);
    });
  }

  @override
  Future<Result<Unit, SettingsFailure>> updateSettings(
    Settings settings,
  ) async {
    var isarSettings = await _isar.settings.get(0);

    if (isarSettings == null) {
      return Err(const SettingsFailure.settingsNotFound());
    }

    final settingsAdapter = SettingsDTO.fromDomain(settings)
        .toAdapter()
        .copyWith(id: isarSettings.id);

    return _isar.writeTxn((isar) async {
      await isar.settings.put(settingsAdapter);

      isarSettings = await _isar.settings.get(0);

      if (isarSettings != null && isarSettings == settingsAdapter) {
        return Ok(unit);
      }
      return Err(const SettingsFailure.settingsNotUpdated());
    });
  }
}
