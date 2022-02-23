import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';

/// @nodoc
@freezed
class Settings with _$Settings {
  /// @nodoc
  const factory Settings({
    required bool? toggleDarkMode,
  }) = _Settings;

  /// @nodoc
  factory Settings.empty() => const Settings(
        toggleDarkMode: false,
      );
}
