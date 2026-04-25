import 'package:movie_app/domain/entities/movie.dart';

class MovieDto extends Movie {
  const MovieDto({
    required super.id,
    required super.title,
    required super.backdropPath,
    required super.genreIds,
    required super.overview,
    required super.voteAverage,
    required super.releaseDate,
  });

  factory MovieDto.fromJson(Map<String, dynamic> json) {
    return MovieDto(
      id: json['id'],
      title: json['title'],
      backdropPath: json['backdrop_path'],
      genreIds: List<int>.from(json['genre_ids'].map((x) => x)),
      overview: json['overview'],
      voteAverage: json['vote_average'],
      releaseDate: json['release_date'],
    );
  }
}
