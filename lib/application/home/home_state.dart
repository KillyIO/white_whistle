part of 'home_bloc.dart';

/// @nodoc
@freezed
class HomeState with _$HomeState {
  /// @nodoc
  const factory HomeState({
    required List<World> worlds,
  }) = _HomeState;

  /// @nodoc
  factory HomeState.initial() => const HomeState(
        worlds: <World>[],
      );
}
