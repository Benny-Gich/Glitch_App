import 'package:glitch_app/features/glitch_app/data/model/actor_model.dart';

class MovieModel {
  final String title;
  final String coverPath;
  final List<String> genre;
  final double rating;
  final String description;
  final String duration;
  final List<ActorModel> actor;

  MovieModel({
    required this.title,
    required this.coverPath,
    required this.genre,
    required this.rating,
    required this.description,
    required this.duration,
    required this.actor,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': this.title,
      'backdrop_path': this.coverPath,
      'genre': this.genre,
      'vote_average': this.rating,
      'overview': this.description,
      'duration': this.duration,
      'actor': this.actor,
    };
  }

  factory MovieModel.fromJson(Map<String, dynamic> map) {
    return MovieModel(
      title: map['title'] as String,
      coverPath: map['backdrop_path'] as String,
      genre: map['genre'] as List<String>,
      rating: map['vote_average'] as double,
      description: map['overview'] as String,
      duration: map['duration'] as String,
      actor: map['actor'] as List<ActorModel>,
    );
  }
}
