import 'package:get_it/get_it.dart';
import 'package:movie_app/data/datasource/remote/movie_remote_datasource.dart';
import 'package:movie_app/data/repository/movies_repository_impl.dart';
import 'package:movie_app/domain/repository/movies_repository.dart';
import 'package:movie_app/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movie_app/domain/usecases/get_popular_movies_usecase.dart';
import 'package:movie_app/domain/usecases/get_top_rated_movies_usecase.dart';
import 'package:movie_app/presentation/controllers/movies_bloc.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    // Bloc
    sl.registerFactory(() => MoviesBloc(sl()));

    // اطلب الـ Abstract وأعطِه الـ Implementation
    // 1. Data Source
    sl.registerLazySingleton<MovieRemoteDatasource>(
      () => MovieRemoteDatasourceImpl(),
    );

    // 2. Repository
    sl.registerLazySingleton<MoviesRepository>(
      () => MoviesRepositoryImpl(sl()),
    );

    // 3. Use Case
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
  }
}
