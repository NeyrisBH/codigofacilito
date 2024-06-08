import 'package:clase_cinco/data/dto/location_dto.dart';
import 'package:clase_cinco/domain/entity/character.dart';

class CharacterDto extends Character {
  CharacterDto({
    super.id,
    super.name,
    super.status,
    super.species,
    super.type,
    super.gender,
    super.origin,
    super.location,
    super.image,
    super.episode,
    super.url,
    super.created
  });

  factory CharacterDto.toObject(Map<String, dynamic> json){
    return CharacterDto(
      id: json['id'],
      name: json['name'],
      status: json['status'],
      species: json['status'],
      type: json['type'],
      gender: json['gender'],
      image: json['image'],
      episode: List<String>.from(json['episode']),
      url: json['url'],
      created: DateTime.parse(json['created']),
      origin: LocationDto.toObject(json['origin']),
      location: LocationDto.toObject(json['location'])
    );
  }

  Map<String,dynamic> toMap() => {
    'id': id,
    'name': name,
    'status': status,
    'species': species,
    'type': type,
    'gender': gender,
    'image': image,
    'episode': List<dynamic>.from(episode!.map((e) => e)),
    'url': url,
    'created': created.toString(),
    'origin': LocationDto.fromLocation(origin!).toMap(),
    'location': LocationDto.fromLocation(location!).toMap()
  };
}