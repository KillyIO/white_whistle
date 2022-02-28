import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:white_whistle/application/setup/setup_cubit.dart';
import 'package:white_whistle/presentation/home/home_menu_layout.dart';

/// @nodoc
class HomeLayout extends StatelessWidget {
  /// @nodoc
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(),
      drawer: BlocBuilder<SetupCubit, SetupState>(
        builder: (context, state) {
          return state.maybeMap(
            content: (_) => const HomeMenuLayout(),
            orElse: Container.new,
          );
        },
      ),
    );
  }
}
