import 'package:clase_cinco/data/dto/character_dto.dart';
import 'package:clase_cinco/data/source/network/api.dart';

abstract class CharacterRemoteSource {
  Future<List<CharacterDto>> loadCharacters({int page=0});
}

class CharacterRemoteSourceImpl implements CharacterRemoteSource {
  Api api;
  CharacterRemoteSourceImpl(this.api);

  @override
  Future<List<CharacterDto>> loadCharacters({int page = 0}) async {
    Map<String, dynamic> jsonResponse = await api.get('/character/?page=$page');
    return (jsonResponse['results'] as List).map((character) => CharacterDto.toObject(character)).toList();
  }}