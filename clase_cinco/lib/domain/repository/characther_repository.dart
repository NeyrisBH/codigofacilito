import 'package:clase_cinco/domain/entity/character.dart';

abstract class CharacterRepository {
  Future<List<Character>> getCharacther({int page=0});
}