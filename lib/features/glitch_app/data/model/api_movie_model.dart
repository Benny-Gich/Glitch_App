class ApiMovieModel {
  final bool adult;
  final String backdropPath;
  final List genreId;
  final int id;
  final String originalId;
  final String overview;
  final num popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final num voteAverage;
  final num voteCount;
  //final Map<String, dynamic> jSon;

  ApiMovieModel({
    required this.adult,
    required this.backdropPath,
    required this.genreId,
    required this.id,
    required this.originalId,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });
  Map<String, dynamic> toJson() {
    return {
      'adult': this.adult,
      'backdrop_path': this.backdropPath,
      'genre_id': this.genreId,
      'id': this.id,
      'original_id': this.originalId,
      'overview': this.overview,
      'popularity': this.popularity,
      'poster_path': this.posterPath,
      'release_date': this.releaseDate,
      'title': this.title,
      'video': this.video,
      'vote_average': this.voteAverage,
      'vote_count': this.voteCount,
    };
  }

  factory ApiMovieModel.fromJson(Map<String, dynamic> map) {
    final Map<String, dynamic> constantMap = {
      "adult": false,
      "backdrop_path": "/1RgPyOhN4DRs225BGTlHJqCudII.jpg",
      "genre_ids": [16, 28, 14, 53],
      "id": 1311031,
      "original_language": "ja",
      "original_title": "劇場版「鬼滅の刃」無限城編 第一章 猗窩座再来",
      "overview":
          "The Demon Slayer Corps are drawn into the Infinity Castle, where Tanjiro, Nezuko, and the Hashira face terrifying Upper Rank demons in a desperate fight as the final battle against Muzan Kibutsuji begins.",
      "popularity": 850.6515,
      "poster_path": "/sUsVimPdA1l162FvdBIlmKBlWHx.jpg",
      "release_date": "2025-07-18",
      "title": "Demon Slayer: Kimetsu no Yaiba Infinity Castle",
      "video": false,
      "vote_average": 7.7,
      "vote_count": 253,
    };
    return ApiMovieModel(
      adult: map['adult'] as bool,
      backdropPath: map['backdrop_path'],
      genreId: map['genre_id'],
      id: map['id'],
      originalId: map['original_id'],
      overview: map['overview'],
      popularity: map['popularity'],
      posterPath: map['poster_path'],
      releaseDate: map['release_date'],
      title: map['title'],
      video: map['video'],
      voteAverage: map['vote_average'],
      voteCount: map['vote_count'],
    );
  }
}

/*"adult": false,
"backdrop_path": "/1RgPyOhN4DRs225BGTlHJqCudII.jpg",
"genre_ids": [
16,
28,
14,
53
],
"id": 1311031,
"original_language": "ja",
"original_title": "劇場版「鬼滅の刃」無限城編 第一章 猗窩座再来",
"overview": "The Demon Slayer Corps are drawn into the Infinity Castle, where Tanjiro, Nezuko, and the Hashira face terrifying Upper Rank demons in a desperate fight as the final battle against Muzan Kibutsuji begins.",
"popularity": 695.2696,
"poster_path": "/aFRDH3P7TX61FVGpaLhKr6QiOC1.jpg",
"release_date": "2025-07-18",
"title": "Demon Slayer: Kimetsu no Yaiba Infinity Castle",
"video": false,
"vote_average": 7.6,
"vote_count": 162*/
