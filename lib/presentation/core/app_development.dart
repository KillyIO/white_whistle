import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:white_whistle/application/theme/theme_cubit.dart';
import 'package:white_whistle/flavor_banner.dart';
import 'package:white_whistle/flavors.dart';
import 'package:white_whistle/injection.dart';
import 'package:white_whistle/presentation/routes/router.dart';

/// @nodoc
class AppDevelopment extends StatelessWidget {
  /// @nodoc
  AppDevelopment({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ThemeCubit>(),
      child: MaterialApp.router(
        builder: (_, router) => FlavorBanner(child: router!),
        debugShowCheckedModeBanner: false,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        title: F.title,
      ),
    );
  }
}
