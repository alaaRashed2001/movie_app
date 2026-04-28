import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/enums.dart';
import 'package:movie_app/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movie_app/presentation/controllers/movies_event.dart';
import 'package:movie_app/presentation/controllers/movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  MoviesBloc(this.getNowPlayingMoviesUseCase) : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      final result = await getNowPlayingMoviesUseCase.execute();
      emit(MoviesState(nowPlayingState: RequestState.loaded));

      result.fold(
        (l) => emit(
          MoviesState(
            nowPlayingState: RequestState.error,
            nowPlayingErrorMessage: l.message,
          ),
        ),
        (r) => emit(
          MoviesState(
            nowPlayingMovies: r,
            nowPlayingState: RequestState.loaded,
          ),
        ),
      );
    });
  }
}
