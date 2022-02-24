import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:white_whistle/domain/world/world.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  /// @nodoc
  HomeBloc() : super(HomeState.initial()) {
    on<Init>((_, emit) async {});
  }
}
