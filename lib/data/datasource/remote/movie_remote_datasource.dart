import 'package:dio/dio.dart';
import 'package:movie_app/data/dto/movie_dto.dart';
import 'package:movie_app/data/error/exceptions.dart';
import 'package:movie_app/data/network/api_constance.dart';
import 'package:movie_app/data/network/error_message_model.dart';

abstract class MovieRemoteDatasource {
  Future<List<MovieDto>> getNowPlayingMovies();
  Future<List<MovieDto>> getPopularMovies();
  Future<List<MovieDto>> getTopRatedMovies();
}

class MovieRemoteDatasourceImpl implements MovieRemoteDatasource {
  @override
  Future<List<MovieDto>> getNowPlayingMovies() async {
    final response = await Dio().get(ApiConstants.nowPlayingMovies);
    if (response.statusCode == 200) {
      return List<MovieDto>.from(
        response.data['results'].map((x) => MovieDto.fromJson(x)),
      );
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<MovieDto>> getPopularMovies() async {
    final response = await Dio().get(ApiConstants.popularMovies);
    if (response.statusCode == 200) {
      return List<MovieDto>.from(
        response.data['results'].map((x) => MovieDto.fromJson(x)),
      );
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<MovieDto>> getTopRatedMovies() async {
    final response = await Dio().get(ApiConstants.topRatedMovies);
    if (response.statusCode == 200) {
      return List<MovieDto>.from(
        response.data['results'].map((x) => MovieDto.fromJson(x)),
      );
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }
}
