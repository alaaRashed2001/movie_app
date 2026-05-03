import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String baseImageUrl = "https://image.tmdb.org/t/p/w500";
  static const String movieBaseUrl = "$baseUrl/movie";
  static String get apiKey => dotenv.env['API_KEY'] ?? '';

  static final String nowPlayingMovies =
      "$movieBaseUrl/now_playing?api_key=$apiKey";
  static final String popularMovies = "$movieBaseUrl/popular?api_key=$apiKey";
  static final String topRatedMovies =
      "$movieBaseUrl/top_rated?api_key=$apiKey";

  static String imageUrl(String path) => "$baseImageUrl$path";
  static String movieDetails(int id) => "$movieBaseUrl/$id?api_key=$apiKey";
}
