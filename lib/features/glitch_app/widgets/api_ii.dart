import 'dart:convert';
import 'package:glitch_app/common/secrets/app_secrets.dart';
import 'package:glitch_app/features/glitch_app/data/model/api_movie_model.dart';
import 'package:glitch_app/features/glitch_app/data/response/api_movie_response.dart';
import 'package:http/http.dart';
import 'package:path/path.dart' as p;

class Api {
  Future<MovieResponse> getNowPlaying() async {
    try {
      String path = p.join(
        AppSecrets.version,
        AppSecrets.moviePath,
        AppSecrets.nowPlaying,
      );
      Uri uri = Uri.https(AppSecrets.moviePath, path, AppSecrets.apiQueryParam);
      final response = await get(uri);
      if (response == 200) {
        final Map<String, dynamic> decodedData =
            json.decode(response.body) as Map<String, dynamic>;
        final results = decodedData['results'] as List<Map<String, dynamic>>;
        final page = decodedData['pages'] as num;

        final movies = results
            .map((movie) => ApiMovieModel.fromJson(movie))
            .toList();
        return MovieResponse.success(movies);
      } else {
        final Map<String, dynamic> errorData =
            json.decode(response.body) as Map<String, dynamic>;
        final errorString = errorData['Status_message'] as String;
        return MovieResponse.failure(errorString);
      }
    } catch (e) {
      return MovieResponse.failure('Failed to load Movies');
    }
  }
}
