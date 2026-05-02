import 'package:flutter/foundation.dart';

class AppConstants {
  AppConstants._();

  /// Base Urls
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String baseImageUrl = "https://image.tmdb.org/t/p/w500";
  static const String movieBaseUrl = "$baseUrl/movie";
  static const String apiKey = "74c8d114219f626865762e8cb03417da";

  /// Debug Mode
  static bool get isDebugMode => kDebugMode;

  /// App Information
  static const String appName = 'Movie App';
  static const String appVersion = '1.0.0';
  static const String appBuildNumber = '1';
}
