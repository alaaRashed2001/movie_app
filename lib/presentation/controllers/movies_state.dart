import 'package:equatable/equatable.dart';
import 'package:movie_app/core/utils/enums.dart';
import 'package:movie_app/domain/entities/movie.dart';

class MoviesState extends Equatable {
  final List<Movie> nowPlayingMovies;
  final RequestState nowPlayingState;
  final String nowPlayingErrorMessage;
  const MoviesState({
    this.nowPlayingMovies = const [],
    this.nowPlayingState = RequestState.loading,
    this.nowPlayingErrorMessage = "",
  });
  @override
  List<Object?> get props => [
    nowPlayingMovies,
    nowPlayingState,
    nowPlayingErrorMessage,
  ];
}
