import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:white_whistle/flavors.dart';
import 'package:white_whistle/injection.dart';
import 'package:white_whistle/presentation/core/app_development.dart';
import 'package:white_whistle/simple_bloc_observer.dart';
import 'package:window_manager/window_manager.dart';

Future<void> main() async {
  F.appFlavor = Flavor.development;

  WidgetsFlutterBinding.ensureInitialized();

  await Future.wait([
    windowManager.ensureInitialized(),
    configureInjection(Environment.dev),
  ]);

  await windowManager.waitUntilReadyToShow();

  await Future.wait([
    windowManager.setTitle(F.title),
    windowManager.setTitleBarStyle('hidden'),
    windowManager.setSize(const Size(1280, 720)),
    windowManager.center(),
    windowManager.show(),
  ]);

  BlocOverrides.runZoned(
    () => runApp(AppDevelopment()),
    blocObserver: SimpleBlocObserver(),
  );
}
