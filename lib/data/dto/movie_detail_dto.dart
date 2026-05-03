import 'package:movie_app/data/dto/genres_dto.dart';
import 'package:movie_app/domain/entities/movie_detail.dart';

class MovieDetailDto extends MovieDetail {
  const MovieDetailDto({
    required super.id,
    required super.title,
    required super.backdropPath,
    required super.overview,
    required super.releaseDate,
    required super.runtime,
    required super.voteAverage,
    required super.genres,
  });
  factory MovieDetailDto.fromJson(Map<String, dynamic> json) {
    return MovieDetailDto(
      id: json['id'],
      title: json['title'],
      backdropPath: json['backdrop_path'],
      overview: json['overview'],
      releaseDate: json['release_date'],
      runtime: json['runtime'],
      voteAverage: json['vote_average'],
      genres: List<GenresDto>.from(
        json['genres'].map((e) => GenresDto.fromJson(e)),
      ),
    );
  }
}
