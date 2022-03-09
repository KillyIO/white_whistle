import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:white_whistle/domain/settings/settings.dart';
import 'package:white_whistle/infrastructure/settings/isar_settings.dart';

part 'settings_dto.freezed.dart';
part 'settings_dto.g.dart';

/// @nodoc
@freezed
class SettingsDTO with _$SettingsDTO {
  /// @nodoc
  factory SettingsDTO({
    required bool toggleDarkMode,
  }) = _SettingsDTO;

  /// @nodoc
  factory SettingsDTO.fromDomain(Settings settings) {
    return SettingsDTO(
      toggleDarkMode: settings.toggleDarkMode,
    );
  }

  /// @nodoc
  factory SettingsDTO.fromAdapter(IsarSettings settings) {
    return SettingsDTO(
      toggleDarkMode: settings.toggleDarkMode,
    );
  }

  /// @nodoc
  factory SettingsDTO.fromJson(Map<String, dynamic>? json) =>
      _$SettingsDTOFromJson(json ?? <String, dynamic>{});
}

/// @nodoc
extension SettingsDTOX on SettingsDTO {
  /// @nodoc
  Settings toDomain() => Settings(
        toggleDarkMode: toggleDarkMode,
      );

  /// @nodoc
  IsarSettings toAdapter() => IsarSettings(
        id: 0,
        toggleDarkMode: toggleDarkMode,
      );
}

/// @nodoc
extension SettingsMapX on Map {
  /// @nodoc
  Settings toDomain() => Settings(
        toggleDarkMode: this['toggleDarkMode'] as bool,
      );
}
