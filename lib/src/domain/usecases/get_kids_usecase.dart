import 'package:injectable/injectable.dart';
import 'package:santa/src/domain/entities/kid.dart';
import 'package:santa/src/domain/repositories/kid_repository.dart';

@injectable
class GetKidUseCase {
  final KidRepository _kidRepository;

  GetKidUseCase(this._kidRepository);

  Future<List<Kid>> call() async {
    return _kidRepository.getKids();
  }
}
