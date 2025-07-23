import 'package:flutter/material.dart';
import 'package:glitch_app/data/model/movie_model.dart';
import 'package:glitch_app/pages/movie_page.dart';
import 'package:glitch_app/widgets/movie_card.dart';

class MovieGrid extends StatefulWidget {
  const MovieGrid({super.key});

  @override
  State<MovieGrid> createState() => _MovieGridState();
}

class _MovieGridState extends State<MovieGrid> {
  final List<MovieModel> newMovie = [
    MovieModel(
      title: '97 Minutes',
      coverPath: 'assets/97 Minutes.jpg',
      genre: ['Action', 'Speed'],
      rating: 5.7,
    ),
    MovieModel(
      title: 'Train Ur Dragon',
      coverPath: 'assets/How to train your Dragon.jpg',
      genre: ['Drama', 'Home'],
      rating: 7.4,
    ),
    MovieModel(
      title: 'M3gan 2.0',
      coverPath: 'assets/M3gan 2.0.jpg',
      genre: ['Drama', 'Sc-Fi'],
      rating: 3.6,
    ),
    MovieModel(
      title: 'Straw',
      coverPath: 'assets/Straw.jpg',
      genre: ['Drama', 'Action'],
      rating: 5.7,
    ),
    MovieModel(
      title: 'Unholy Trinity',
      coverPath: 'assets/The Unholy Trinity.jpg',
      genre: ['Action', 'Comic'],
      rating: 5.7,
    ),
    MovieModel(
      title: 'The Accountant',
      coverPath: 'assets/The Accountant 2.jpg',
      genre: ['Action', 'Sci-Fi'],
      rating: 6.7,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.6,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: newMovie.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  MoviePage.route,
                  arguments: newMovie.elementAt(index),
                );
              },
              child: MovieCard(movieModel: newMovie.elementAt(index)),
            );
          },
        ),
      ],
    );
  }
}
