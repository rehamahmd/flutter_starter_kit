// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/feature_1/application/services/feature_1_service.dart'
    as _i642;
import '../../features/feature_1/data/repositories/feature_1_repository.dart'
    as _i211;
import '../../features/feature_1/data/source/local/feature_1_local_data_source.dart'
    as _i998;
import '../../features/feature_1/data/source/remote/feature_1_remote_data_source.dart'
    as _i496;
import '../data/network/network_helper.dart' as _i538;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i998.Feature1LocalDataSource>(
        () => _i998.Feature1LocalDataSource());
    gh.factory<_i538.NetworkHelper>(() => _i538.NetworkHelper());
    gh.factory<_i496.Feature1RemoteDataSource>(
        () => _i496.Feature1RemoteDataSource(gh<_i538.NetworkHelper>()));
    gh.factory<_i211.Feature1Repository>(() => _i211.Feature1Repository(
          gh<_i496.Feature1RemoteDataSource>(),
          gh<_i998.Feature1LocalDataSource>(),
        ));
    gh.factory<_i642.Feature1Service>(
        () => _i642.Feature1Service(gh<_i211.Feature1Repository>()));
    return this;
  }
}
