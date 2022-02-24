// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i4;

import 'application/home/home_bloc.dart' as _i3;
import 'infrastructure/core/isar_injectable_module.dart' as _i5;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final iIsarInjectableModule = _$IIsarInjectableModule();
  gh.factory<_i3.HomeBloc>(() => _i3.HomeBloc(), registerFor: {_dev, _prod});
  await gh.lazySingletonAsync<_i4.Isar>(() => iIsarInjectableModule.isar,
      registerFor: {_dev, _prod}, preResolve: true);
  return get;
}

class _$IIsarInjectableModule extends _i5.IIsarInjectableModule {}
