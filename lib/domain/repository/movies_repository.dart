import 'package:dartz/dartz.dart';
import 'package:movie_app/data/error/failure.dart';
import 'package:movie_app/domain/entities/movie.dart';

abstract class MoviesRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
}
