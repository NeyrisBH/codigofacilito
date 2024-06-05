import 'package:clase_cinco/domain/entity/character.dart';
import 'package:clase_cinco/domain/usecase/get_all_characters.dart';
import 'package:clase_cinco/injection_container.dart';
import 'package:flutter/material.dart';

enum CharacterStatus {initial, loaging, success, failed}
class CharacterChangeNotifier extends ChangeNotifier {
  final GetAllCharacters _getAllCharacters;
  CharacterChangeNotifier():
     _getAllCharacters = sl.get<GetAllCharacters>(),
     _status = CharacterStatus.initial,
     _currentPage = 1,
     _characters = [];

  CharacterStatus _status;
  CharacterStatus get status => _status;

  int _currentPage;
  int get currentPage => _currentPage;

  final List<Character> _characters;
  List<Character> get characters => List.of(_characters);

  Future<void> fechNextPage() async {
    _status = CharacterStatus.loaging;
    notifyListeners();
    final list = await _getAllCharacters(page: _currentPage);
    _currentPage++;
    _characters.addAll(list);
    _status = CharacterStatus.success;
    notifyListeners();
  }
}