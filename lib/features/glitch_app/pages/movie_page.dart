import 'package:flutter/material.dart';
import 'package:glitch_app/features/glitch_app/data/model/actor_model.dart';
import 'package:glitch_app/features/glitch_app/data/model/movie_model.dart';
import 'package:glitch_app/features/glitch_app/widgets/actor_tab.dart';
import 'package:glitch_app/features/glitch_app/widgets/movie_tab.dart';

class MoviePageArguments {
  final MovieModel movieModel;
  final ActorModel? actorModel;

  const MoviePageArguments({
    required this.movieModel,
    required this.actorModel,
  });
}

class MoviePage extends StatelessWidget {
  final MovieModel movie;

  const MoviePage({super.key, required this.movie});
  static const String route = '/Movie';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    child: Hero(
                      tag: movie.coverPath,
                      child: Image.asset(movie.coverPath, fit: BoxFit.cover),
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton.filled(
                            style: FilledButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios),
                          ),
                          IconButton.filled(
                            style: FilledButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {},
                            icon: Icon(Icons.menu_open),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movie.title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text('${movie.rating} ⭐'),
                            SizedBox(width: 20),
                          ],
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(movie.genre.length, (
                              index,
                            ) {
                              return MovieTab(
                                widget: Text(
                                  movie.genre.elementAt(index),
                                  style: TextStyle(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.onSecondary,
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: FilledButton.icon(
                                style: FilledButton.styleFrom(
                                  backgroundColor: Theme.of(
                                    context,
                                  ).colorScheme.secondary,
                                  foregroundColor: Theme.of(
                                    context,
                                  ).colorScheme.onSecondary,
                                  iconColor: Theme.of(
                                    context,
                                  ).colorScheme.onSecondary,
                                ),
                                onPressed: () {},
                                label: Text('Watch Movie'),
                                icon: Icon(Icons.play_arrow_rounded, size: 30),
                              ),
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton.filled(
                                  style: FilledButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {},
                                  icon: Icon(Icons.file_download_sharp),
                                ),
                                SizedBox(width: 20),
                                IconButton.filled(
                                  style: FilledButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {},
                                  icon: Icon(Icons.share),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        ActorTab(actorModel: movie.actor),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Synopsis',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              Divider(),
                            ],
                          ),
                        ),

                        Text(movie.description),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
