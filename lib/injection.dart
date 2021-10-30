import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:white_whistle/injection.config.dart';

/// @nodoc
final getIt = GetIt.instance;

/// @nodoc
@InjectableInit()
void configureInjection() => $initGetIt(getIt);
