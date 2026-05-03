import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/entities/movie.dart';
import 'package:movie_app/domain/failure/failure.dart';
import 'package:movie_app/domain/repository/movies_repository.dart';
import 'package:movie_app/domain/usecases/base_usecase.dart';

class GetNowPlayingMoviesUseCase extends BaseUseCase<List<Movie>> {
  final MoviesRepository moviesRepository;

  GetNowPlayingMoviesUseCase(this.moviesRepository);
  @override
  Future<Either<Failure, List<Movie>>> call() async {
    return await moviesRepository.getNowPlayingMovies();
  }
}
