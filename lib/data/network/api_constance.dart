import 'package:movie_app/core/constants/app_constants.dart';

class ApiConstants {
  // Endpoints

  static const String nowPlayingMovies =
      "${AppConstants.movieBaseUrl}/now_playing?api_key=${AppConstants.apiKey}";
  static const String popularMovies =
      "${AppConstants.movieBaseUrl}/popular?api_key=${AppConstants.apiKey}";
  static const String topRatedMovies =
      "${AppConstants.movieBaseUrl}/top_rated?api_key=${AppConstants.apiKey}";

  static String imageUrl(String path) => "${AppConstants.baseImageUrl}$path";
}
