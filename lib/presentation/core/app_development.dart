import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:white_whistle/application/theme/theme_cubit.dart';
import 'package:white_whistle/flavor_banner.dart';
import 'package:white_whistle/flavors.dart';
import 'package:white_whistle/injection.dart';
import 'package:white_whistle/presentation/routes/router.dart';
import 'package:white_whistle/utils/constants/theme.dart';

/// @nodoc
class AppDevelopment extends StatelessWidget {
  /// @nodoc
  AppDevelopment({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ThemeCubit>()..init(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            builder: (_, router) => FlavorBanner(child: router!),
            darkTheme: darkTheme,
            debugShowCheckedModeBanner: false,
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
            theme: lightTheme,
            themeMode: state.themeMode,
            title: F.title,
          );
        },
      ),
    );
  }
}
