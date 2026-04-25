import 'package:dartz/dartz.dart';
import 'package:movie_app/data/error/failure.dart';
import 'package:movie_app/domain/entities/movie.dart';
import 'package:movie_app/domain/repository/movies_repository.dart';
class GetPopularMoviesUseCase {
  final MoviesRepository moviesRepository;
  GetPopularMoviesUseCase(this.moviesRepository);

  Future<Either<Failure, List<Movie>>> execute() async {
    return await moviesRepository.getPopularMovies();
  }
}
