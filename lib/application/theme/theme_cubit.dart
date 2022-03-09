import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:white_whistle/domain/core/core_failure.dart';
import 'package:white_whistle/domain/settings/i_settings_repository.dart';

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
}
