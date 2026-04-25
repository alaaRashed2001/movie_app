import 'package:movie_app/movies/domain/entities/movie.dart';
import 'package:movie_app/movies/domain/repository/base_movies_repository.dart';

class GetNowPlayingMovies {
  final BaseMoviesRepository moviesRepository;

  GetNowPlayingMovies(this.moviesRepository);

  Future<List<Movie>> execute() async {
    return await moviesRepository.getNowPlayingMovies();
  }
}
