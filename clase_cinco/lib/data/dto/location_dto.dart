import 'package:clase_cinco/domain/entity/location.dart';

class LocationDto extends Location {
  LocationDto({
    super.name,
    super.url
  });

  factory LocationDto.toObject(Map<String, dynamic> json){
    return LocationDto(
      name: json['name'],
      url: json['url']
    );
  }

  Map<String, dynamic> toMap() => {
    'name': name,
    'url': url
  };

  static LocationDto fromLocation(Location location){
    return LocationDto(name: location.name, url: location.url);
  }
}