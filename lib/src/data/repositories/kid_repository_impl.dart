import 'package:injectable/injectable.dart';
import 'package:santa/src/data/sources/local/kid_local_data_source.dart';
import 'package:santa/src/domain/entities/kid.dart';
import 'package:santa/src/domain/repositories/kid_repository.dart';

@injectable
class KidRepositoryImpl implements KidRepository {
  final KidLocalDataSource _kidDataSource;

  KidRepositoryImpl(this._kidDataSource);

  @override
  Future<List<Kid>> getKids() async {
    return _kidDataSource.getKids();
  }
}