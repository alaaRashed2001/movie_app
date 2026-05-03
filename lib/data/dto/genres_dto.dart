import 'package:movie_app/domain/entities/genres.dart';

class GenresDto extends Genres {
  const GenresDto({required super.id, required super.name});
  factory GenresDto.fromJson(Map<String, dynamic> json) {
    return GenresDto(id: json['id'], name: json['name']);
  }
}
