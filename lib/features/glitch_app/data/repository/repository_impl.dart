import 'package:dartz/dartz.dart';
import 'package:glitch_app/common/api/api.dart';
import 'package:glitch_app/features/glitch_app/data/model/api_movie_model.dart';
import 'package:glitch_app/features/glitch_app/domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  final ApiService apiService = ApiService();
  @override
  Future<Either<String, List<ApiMovieModel>>> getNowPlaying() async {
    try {
      final result = await apiService.getNowPlaying();
      if (result.success) {
        return right(result.apiMovies);
      } else {
        return left(result.error);
      }
      ;
    } catch (e) {
      return left('Please try again!');
    }
  }
}
