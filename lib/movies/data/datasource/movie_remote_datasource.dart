import 'package:dio/dio.dart';
import 'package:movie_app/core/error/exceptions.dart';
import 'package:movie_app/core/network/api_constance.dart';
import 'package:movie_app/core/network/error_message_model.dart';
import 'package:movie_app/movies/data/models/movie_model.dart';

abstract class BaseMovieRemoteDatasource {
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
}

class MovieRemoteDatasource implements BaseMovieRemoteDatasource {
  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final response = await Dio().get(ApiConstance.nowPlayingMovies);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        response.data['results'].map((x) => MovieModel.fromJson(x)),
      );
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    final response = await Dio().get(ApiConstance.popularMovies);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        response.data['results'].map((x) => MovieModel.fromJson(x)),
      );
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    final response = await Dio().get(ApiConstance.topRatedMovies);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        response.data['results'].map((x) => MovieModel.fromJson(x)),
      );
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }
}
