import 'dart:async';

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

  unawaited(
    windowManager.waitUntilReadyToShow().whenComplete(() async {
      await windowManager.setTitle(F.title);
      await windowManager.setTitleBarStyle('visible');
      await windowManager.setSize(const Size(1280, 720));
      await windowManager.center();
      await windowManager.show();
      await windowManager.setSkipTaskbar(false);
    }),
  );

  BlocOverrides.runZoned(
    () => runApp(AppDevelopment()),
    blocObserver: SimpleBlocObserver(),
  );
}
