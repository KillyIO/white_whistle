import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:white_whistle/injection.dart';
import 'package:white_whistle/presentation/core/app.dart';

void main() {
  configureInjection();

  runApp(App());

  doWhenWindowReady(() {
    const initialSize = Size(1280, 720);
    appWindow
      ..minSize = initialSize
      ..size = initialSize
      ..alignment = Alignment.center
      ..title = 'White Whistle'
      ..show();
  });
}
