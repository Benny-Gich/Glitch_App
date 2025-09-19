import 'dart:convert';
import 'package:glitch_app/common/secrets/app_secrets.dart';
import 'package:glitch_app/features/glitch_app/data/model/api_movie_model.dart';
import 'package:glitch_app/features/glitch_app/data/response/api_movie_response.dart';
import 'package:http/http.dart';
import 'package:path/path.dart' as p;

class ApiService {
  Future<MovieResponse> getNowPlaying() async {
    //Uri url = Uri.parse(AppSecrets.nowPlayingUrl);
    try {
      String path = p.join(
        AppSecrets.version,
        AppSecrets.moviePath,
        AppSecrets.nowPlaying,
      );
      Uri uri = Uri.https(AppSecrets.baseUrl, path, AppSecrets.apiQueryParam);
      final response = await get(uri);
      if (response.statusCode == 200) {
        //final List<dynamic> data = json.decode(response.body);
        final Map<String, dynamic> decodedData =
            json.decode(response.body) as Map<String, dynamic>;

        // Map<String,dynamic> decdedData= {
        // "dates": {
        //         "maximum": "2025-09-24",
        //         "d": "2025-08-13"
        //     },
        // "page": 1,
        // "results:[]
        //
        //
        // }

        final maximum = decodedData['dates']['maximum'] as String;
        final minimumu = decodedData['total_pages'] as num;
        final maxx = decodedData['total_results'] as num;

        final results = decodedData['results'] as List<Map<String, dynamic>>;
        final pages = decodedData['page'] as num;
        List<ApiMovieModel> movies = results
            .map((movie) => ApiMovieModel.fromJson(movie))
            .toList();
        return MovieResponse.success(movies);
      } else {
        final Map<String, dynamic> errorData =
            json.decode(response.body) as Map<String, dynamic>;

        final errorString = errorData['status_message'] as String;
        return MovieResponse.failure(errorString);
      }
    } catch (e) {
      return MovieResponse.failure('Failed to fetch Movies');
    }
  }
}
