import 'package:dartz/dartz.dart';
import 'package:glitch_app/features/glitch_app/data/model/api_movie_model.dart';

abstract class Repository {
  Future<Either<String, List<ApiMovieModel>>> getNowPlaying();
}
