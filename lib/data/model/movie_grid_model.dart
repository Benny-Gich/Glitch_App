import 'package:flutter/cupertino.dart';

import 'movie_model.dart';

class MovieGridModel extends MovieModel {
  String duration;
  String year;
  String actorName;
  String actorPhoto;
  String alsoFeatured;
  Widget widget;
  String description;

  MovieGridModel({
    required super.title,
    required super.coverPath,
    required super.genre,
    required super.rating,
    required this.actorName,
    required this.actorPhoto,
    required this.alsoFeatured,
    required this.duration,
    required this.year,
    required this.widget,
    required this.description,
  });
}
