import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:white_whistle/application/setup/setup_cubit.dart';
import 'package:white_whistle/injection.dart';
import 'package:white_whistle/presentation/home/home_layout.dart';

/// @nodoc
class HomePage extends StatelessWidget {
  /// @nodoc
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<SetupCubit>()..init(),
        ),
      ],
      child: const SafeArea(child: HomeLayout()),
    );
  }
}
