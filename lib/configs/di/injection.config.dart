// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/app/bloc/app_bloc.dart' as _i9;
import '../../features/home/data/providers/local/home_storage.dart' as _i6;
import '../../features/home/data/repositories/home_repository.dart' as _i7;
import '../../features/home/data/repositories/home_repository_impl.dart' as _i8;
import '../../features/home/domain/usecase/home_usecase.dart' as _i10;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i11;
import '../../utils/logger/logger_util.dart' as _i4;
import '../../utils/preferences/pref_util.dart' as _i5;
import '../network/dio_client.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.DioClient>(() => _i3.DioClient());
    gh.lazySingleton<_i4.LogUtils>(() => _i4.LogUtils());
    gh.lazySingleton<_i5.PrefUtil>(() => _i5.PrefUtil());
    gh.lazySingleton<_i6.HomeStorage>(() => _i6.HomeStorage());
    gh.factory<_i7.HomeRepository>(() => _i8.HomeRepositoryImpl());
    gh.lazySingleton<_i9.AppBloc>(() => _i9.AppBloc(gh<_i5.PrefUtil>()));
    gh.factory<_i10.HomeUseCase>(
        () => _i10.HomeUseCaseImpl(gh<_i7.HomeRepository>()));
    gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc(gh<_i10.HomeUseCase>()));
    return this;
  }
}
