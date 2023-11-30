// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:santa/src/data/repositories/kid_repository_impl.dart' as _i6;
import 'package:santa/src/data/sources/local/kid_local_data_source.dart' as _i5;
import 'package:santa/src/domain/blocs/christmas_list/christmas_list_bloc.dart'
    as _i7;
import 'package:santa/src/domain/repositories/kid_repository.dart' as _i4;
import 'package:santa/src/domain/usecases/get_kids_usecase.dart' as _i3;

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
    gh.factory<_i3.GetKidUseCase>(
        () => _i3.GetKidUseCase(gh<_i4.KidRepository>()));
    gh.singleton<_i5.KidLocalDataSource>(_i5.KidLocalDataSource());
    gh.factory<_i6.KidRepositoryImpl>(
        () => _i6.KidRepositoryImpl(gh<_i5.KidLocalDataSource>()));
    gh.factory<_i7.ChristmasListBloc>(
        () => _i7.ChristmasListBloc(gh<_i3.GetKidUseCase>()));
    return this;
  }
}
