import 'package:clase_cinco/domain/entity/character.dart';
import 'package:clase_cinco/domain/repository/characther_repository.dart';

class GetAllCharacters {
  final CharacterRepository _respository;
  GetAllCharacters({required CharacterRepository repository}): _respository = repository;

  Future<List<Character>> call({int page=0}) async {
    return await _respository.getCharacther(page: page);
  }
}