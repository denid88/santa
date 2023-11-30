import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:santa/src/data/repositories/kid_repository_impl.dart';
import 'package:santa/src/data/sources/local/kid_local_data_source.dart';
import 'package:santa/src/domain/blocs/christmas_list/christmas_list_bloc.dart';
import 'package:santa/src/domain/repositories/kid_repository.dart';
import 'package:santa/src/domain/usecases/get_kids_usecase.dart';

final getIt = GetIt.instance;

@InjectableInit(
  ignoreUnregisteredTypes: [
    KidRepository,
  ],
)
void configureDependencies() {
  getIt.registerSingleton<KidLocalDataSource>(KidLocalDataSource());
  getIt.registerSingleton<KidRepository>(
      KidRepositoryImpl(getIt<KidLocalDataSource>()));
  getIt.registerSingleton<GetKidUseCase>(
      GetKidUseCase(getIt<KidRepository>()));
  getIt.registerFactory<ChristmasListBloc>(() => ChristmasListBloc(getIt<GetKidUseCase>()));
}
