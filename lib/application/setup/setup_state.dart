part of 'setup_cubit.dart';

/// [SetupCubit] state.
@freezed
class SetupState with _$SetupState {
  /// @nodoc
  const factory SetupState.content() = _Content;

  /// @nodoc
  const factory SetupState.failure(CoreFailure failure) = _Failure;

  /// @nodoc
  const factory SetupState.initial() = _Initial;
}
