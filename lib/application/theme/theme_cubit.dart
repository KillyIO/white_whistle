import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:white_whistle/domain/core/core_failure.dart';
import 'package:white_whistle/domain/settings/i_settings_repository.dart';
import 'package:white_whistle/domain/settings/settings.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class ThemeCubit extends Cubit<ThemeState> {
  /// @nodoc
  ThemeCubit(
    this._settingsRepository,
  ) : super(ThemeState.initial());

  /// @nodoc
  final ISettingsRepository _settingsRepository;

  /// @nodoc
  Future<void> init() async =>
      (await _settingsRepository.fetchSettings()).match(
        (settings) {
          emit(
            state.copyWith(
              failureOption: Option.none(),
              themeMode:
                  settings.toggleDarkMode ? ThemeMode.dark : ThemeMode.light,
            ),
          );
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Option.some(Err(CoreFailure.settings(failure))),
            ),
          );
        },
      );

  /// @nodoc
  Future<void> toggleDarkMode() async =>
      (await _settingsRepository.fetchSettings()).match(
        _settingsFetched,
        (failure) {
          emit(
            state.copyWith(
              failureOption: Option.some(Err(CoreFailure.settings(failure))),
            ),
          );
        },
      );

  /// @nodoc
  Future<void> _settingsFetched(Settings settings) async {
    final toggleDarkMode = !settings.toggleDarkMode;

    (await _settingsRepository.updateSettings(
      settings.copyWith(
        toggleDarkMode: toggleDarkMode,
      ),
    ))
        .match(
      (_) {
        emit(
          state.copyWith(
            failureOption: Option.none(),
            themeMode: toggleDarkMode ? ThemeMode.dark : ThemeMode.light,
          ),
        );
      },
      (failure) {
        emit(
          state.copyWith(
            failureOption: Option.some(Err(CoreFailure.settings(failure))),
          ),
        );
      },
    );
  }
}
