import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/domain/entities/movie_detail.dart';
import 'package:movie_app/domain/failure/failure.dart';
import 'package:movie_app/domain/repository/movies_repository.dart';
import 'package:movie_app/domain/usecases/base_usecase.dart';

class GetMovieDetailUseCase
    extends BaseUseCase<MovieDetail, GetMovieDetailParameters> {
  final MoviesRepository moviesRepository;

  GetMovieDetailUseCase(this.moviesRepository);
  @override
  Future<Either<Failure, MovieDetail>> call(
    GetMovieDetailParameters parameters,
  ) async {
    return await moviesRepository.getMovieDetails(parameters);
  }
}

class GetMovieDetailParameters extends Equatable {
  final int movieId;
  const GetMovieDetailParameters({required this.movieId});
  @override
  List<Object?> get props => [movieId];
}
