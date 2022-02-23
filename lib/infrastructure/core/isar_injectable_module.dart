import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:white_whistle/flavors.dart';
import 'package:white_whistle/infrastructure/settings/isar_settings.dart';

/// @nodoc
@module
abstract class IIsarInjectableModule {
  /// Initialize and return an instance of Isar.
  @preResolve
  @Environment(Environment.dev)
  @Environment(Environment.prod)
  @LazySingleton()
  Future<Isar> get isar async {
    final isar = await Isar.open(
      inspector: F.appFlavor == Flavor.development,
      schemas: [IsarSettingsSchema],
      directory: (await getApplicationDocumentsDirectory()).path,
    );

    return isar;
  }
}
