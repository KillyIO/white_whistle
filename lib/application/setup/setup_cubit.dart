import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:white_whistle/domain/core/core_failure.dart';
import 'package:white_whistle/domain/settings/i_settings_repository.dart';

part 'setup_state.dart';
part 'setup_cubit.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class SetupCubit extends Cubit<SetupState> {
  /// @nodoc
  SetupCubit(
    this._settingsRepository,
  ) : super(const SetupState.initial());

  /// @nodoc
  final ISettingsRepository _settingsRepository;

  /// @nodoc
  Future<void> init() async =>
      (await _settingsRepository.fetchSettings()).match(
        (_) {
          emit(const SetupState.content());
        },
        (_) {
          _settingsNotFound();
        },
      );

  /// @nodoc
  Future<void> _settingsNotFound() async =>
      (await _settingsRepository.createSettings()).match(
        (_) {
          emit(const SetupState.content());
        },
        (failure) {
          emit(SetupState.failure(CoreFailure.settings(failure)));
        },
      );
}
