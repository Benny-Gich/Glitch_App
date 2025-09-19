import 'package:glitch_app/features/glitch_app/data/model/api_movie_model.dart';

class MovieResponse {
  final List<ApiMovieModel> apiMovies;
  final String error;
  final bool success;

  MovieResponse.success(this.apiMovies) : error = '', success = true;
  MovieResponse.failure(this.error) : success = false, apiMovies = [];
}
