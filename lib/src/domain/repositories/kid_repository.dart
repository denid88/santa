import 'package:santa/src/domain/entities/kid.dart';

abstract class KidRepository {
  Future<List<Kid>> getKids();
}