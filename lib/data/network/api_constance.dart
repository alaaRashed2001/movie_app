class ApiConstants {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String movieBaseUrl = "$baseUrl/movie";
  static const String apiKey = "74c8d114219f626865762e8cb03417da";

  // Endpoints

  static const String nowPlayingMovies =
      "$movieBaseUrl/now_playing?api_key=$apiKey";
  static const String popularMovies = "$movieBaseUrl/popular?api_key=$apiKey";
  static const String topRatedMovies =
      "$movieBaseUrl/top_rated?api_key=$apiKey";
}
