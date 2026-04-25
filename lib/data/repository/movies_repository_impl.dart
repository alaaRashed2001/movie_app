import 'package:dartz/dartz.dart';
import 'package:movie_app/data/datasource/remote/movie_remote_datasource.dart';
import 'package:movie_app/data/error/exceptions.dart';
import 'package:movie_app/data/error/failure.dart';
import 'package:movie_app/domain/entities/movie.dart';
import 'package:movie_app/domain/repository/movies_repository.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  final MovieRemoteDatasource movieRemoteDatasource;
  MoviesRepositoryImpl(this.movieRemoteDatasource);
  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    try {
      final result = await movieRemoteDatasource.getNowPlayingMovies();
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    } catch (e) {
      return Left(ServerFailure("Unexpected Error Occurred"));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    try {
      final result = await movieRemoteDatasource.getPopularMovies();
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    } catch (e) {
      return Left(ServerFailure("Unexpected Error Occurred"));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    try {
      final result = await movieRemoteDatasource.getTopRatedMovies();

      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    } catch (e) {
      return Left(ServerFailure("Unexpected Error Occurred"));
    }
  }
}
