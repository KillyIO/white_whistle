import 'package:flutter/material.dart';
import 'package:white_whistle/flavors.dart';
import 'package:white_whistle/presentation/routes/router.dart';

/// @nodoc
class AppProduction extends StatelessWidget {
  /// @nodoc
  AppProduction({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (_, router) => router!,
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: F.title,
    );
  }
}
