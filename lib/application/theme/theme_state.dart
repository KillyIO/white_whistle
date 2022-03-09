part of 'theme_cubit.dart';

/// @nodoc
@freezed
class ThemeState with _$ThemeState {
  /// @nodoc
  const factory ThemeState({
    required Option<Result<None, CoreFailure>> failureOption,
    required ThemeMode themeMode,
  }) = _ThemeState;

  /// @nodoc
  factory ThemeState.initial() => const ThemeState(
        failureOption: None(),
        themeMode: ThemeMode.light,
      );
}
