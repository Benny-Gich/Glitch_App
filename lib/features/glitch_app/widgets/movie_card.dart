import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:glitch_app/features/glitch_app/data/model/movie_model.dart';
import 'package:glitch_app/features/glitch_app/pages/movie_page.dart';
import 'package:glitch_app/features/glitch_app/widgets/movie_tab.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieCard extends StatelessWidget {
  final MovieModel movieModel;
  const MovieCard({super.key, required this.movieModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          MoviePage.route,
          arguments: MoviePageArguments(
            movieModel: movieModel,
            actorModel: null,
          ),
        );
      },
      child: Container(
        height: 280,
        width: 180,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Hero(
              tag: movieModel.coverPath,
              child: Image.asset(movieModel.coverPath, fit: BoxFit.fill),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton.filled(
                  style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border_outlined),
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
                clipBehavior: Clip.antiAlias,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
                  child: Container(
                    height: 70,
                    color: Colors.grey.withOpacity(0.5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Text(
                                  movieModel.title,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.onPrimary,
                                  ),
                                ),
                              ),
                              Text(
                                '${movieModel.rating} ⭐',
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(movieModel.genre.length, (
                            index,
                          ) {
                            return MovieTab(
                              widget: Text(
                                movieModel.genre.elementAt(index),
                                style: GoogleFonts.roboto(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onPrimary,
                                  fontSize: 12,
                                ),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
