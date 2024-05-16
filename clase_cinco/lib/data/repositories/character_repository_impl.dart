import 'package:clase_cinco/data/source/character_remote_data_source.dart';
import 'package:clase_cinco/domain/entity/character.dart';
import 'package:clase_cinco/domain/repository/characther_repository.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final CharacterRemoteSourceImpl _characterRemoteSourceImpl;
  CharacterRepositoryImpl({required CharacterRemoteSourceImpl characterRemoteSourceImpl}):
    _characterRemoteSourceImpl = characterRemoteSourceImpl;
  

  @override
  Future<List<Character>> getCharacther({int page = 0}) async {
    return await _characterRemoteSourceImpl.loadCharacters(page: page);
  }
}