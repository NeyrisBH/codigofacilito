import 'package:clase_cinco/data/repositories/character_repository_impl.dart';
import 'package:clase_cinco/data/source/character_remote_data_source.dart';
import 'package:clase_cinco/data/source/network/api.dart';
import 'package:clase_cinco/domain/repository/characther_repository.dart';
import 'package:clase_cinco/domain/usecase/get_all_characters.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<Api>(() => Api());
  sl.registerLazySingleton<CharacterRemoteSourceImpl>(() => CharacterRemoteSourceImpl(sl()));
  sl.registerLazySingleton<CharacterRepository>(() => CharacterRepositoryImpl(characterRemoteSourceImpl:sl()));
  

  sl.registerLazySingleton<GetAllCharacters>(() => GetAllCharacters(repository: sl()));
}