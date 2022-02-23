import 'package:flutter/material.dart';
import 'package:white_whistle/flavor_banner.dart';
import 'package:white_whistle/flavors.dart';
import 'package:white_whistle/presentation/routes/router.dart';

/// @nodoc
class AppDevelopment extends StatelessWidget {
  /// @nodoc
  AppDevelopment({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (_, router) => FlavorBanner(child: router!),
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: F.title,
    );
  }
}
