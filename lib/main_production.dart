import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:white_whistle/flavors.dart';
import 'package:white_whistle/injection.dart';
import 'package:white_whistle/presentation/core/app_production.dart';

Future<void> main() async {
  F.appFlavor = Flavor.production;

  await configureInjection(Environment.prod);

  runApp(AppProduction());
}
