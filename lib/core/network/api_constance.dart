import 'package:movie_app/core/utils/app_constance.dart';

class ApiConstance {
  static const String nowPlayingMovies =
      "${AppConstance.movieBaseUrl}/now_playing?api_key=${AppConstance.apiKey}";
  static const String popularMovies =
      "${AppConstance.movieBaseUrl}/popular?api_key=${AppConstance.apiKey}";
  static const String topRatedMovies =
      "${AppConstance.movieBaseUrl}/top_rated?api_key=${AppConstance.apiKey}";
}
