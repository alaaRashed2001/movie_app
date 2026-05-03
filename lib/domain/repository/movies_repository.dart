import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/entities/movie.dart';
import 'package:movie_app/domain/failure/failure.dart';

abstract class MoviesRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
}
