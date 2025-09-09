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
}
