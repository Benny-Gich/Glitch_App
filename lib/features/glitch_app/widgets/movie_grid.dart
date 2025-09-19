import 'package:flutter/material.dart';
import 'package:glitch_app/features/glitch_app/data/model/actor_model.dart';
import 'package:glitch_app/features/glitch_app/data/model/movie_model.dart';
import 'package:glitch_app/features/glitch_app/widgets/movie_card.dart';

class MovieGrid extends StatefulWidget {
  const MovieGrid({super.key});

  @override
  State<MovieGrid> createState() => _MovieGridState();
}

class _MovieGridState extends State<MovieGrid> {
  @override
  void initState() {
    super.initState();
  }

  final List<MovieModel> newMovie = [
    MovieModel(
      title: '97 Minutes',
      coverPath: 'assets/97 Minutes.jpg',
      genre: ['Action', 'Speed'],
      rating: 5.7,
      description:
          'A ticking clock scenario unfolds as a hijacked 767 airplane faces imminent disaster when its fuel supply dwindles, with just 97 minutes remaining.',
      duration: '94 Minutes',
      actor: [
        ActorModel(
          actorImage: 'assets/Luke J..jpg',
          actorName: 'Luke J.',
          alsoFeatured: "Goran",
        ),
        ActorModel(
          actorImage: 'assets/Valry Danko.jpg',
          actorName: 'Valery Danko',
          alsoFeatured: "Aqua Man",
        ),
      ],
    ),
    MovieModel(
      title: 'How To train Your Dragon',
      coverPath: 'assets/How to train your Dragon.jpg',
      genre: ['Drama', 'Home'],
      rating: 7.4,
      description:
          'As an ancient threat endangers both Vikings and dragons alike on the isle of Berk, the friendship between Hiccup, an inventive Viking, and Toothless, a Night Fury dragon, becomes the key to both species forging a new future together.',
      duration: '125 Minutes',
      actor: [
        ActorModel(
          actorImage: "assets/Actor HTYD.jpg",
          actorName: "Mason Thames",
          alsoFeatured: "Moana",
        ),
      ],
    ),
    MovieModel(
      title: 'M3gan 2.0',
      coverPath: 'assets/M3gan 2.0.jpg',
      genre: ['Drama', 'Sc-Fi'],
      rating: 3.6,
      description:
          "Two years after M3GAN's rampage, her creator, Gemma, resorts to resurrecting her infamous creation in order to take down Amelia, the military-grade weapon who was built by a defense contractor who stole M3GAN's underlying tech.",
      duration: '120 Minutes',
      actor: [
        ActorModel(
          actorImage: "assets/Violet.jpg",
          actorName: "Violet McGraw",
          alsoFeatured: "Red Notice",
        ),
        ActorModel(
          actorImage: "James Wan.jpg",
          actorName: "James Wan",
          alsoFeatured: "Gossip Girl",
        ),
      ],
    ),
    MovieModel(
      title: 'Straw',
      coverPath: 'assets/Straw.jpg',
      genre: ['Drama', 'Action'],
      rating: 5.7,
      description:
          'A single mother navigates a series of unfortunate events, leading her down an unforeseen path where she becomes embroiled in a situation she never envisioned, finding herself at the center of suspicion in an indifferent world.',
      duration: '105 Minutes',
      actor: [
        ActorModel(
          actorImage: "assets/Sherri.jpg",
          actorName: "Sherri Shephard",
          alsoFeatured: "Shazam",
        ),
      ],
    ),
    MovieModel(
      title: 'Unholy Trinity',
      coverPath: 'assets/The Unholy Trinity.jpg',
      genre: ['Action', 'Comic'],
      rating: 5.7,
      description:
          'Buried secrets of an 1870s Montana town spark violence when a young man returns to reclaim his legacy and is caught between a sheriff determined to maintain order and a mysterious stranger hell-bent on destroying it.',
      duration: '95 Minutes',
      actor: [
        ActorModel(
          actorImage: "assets/Pierce.jpg",
          actorName: "Pierce Brosnan",
          alsoFeatured: "2 Fast 2 Furious",
        ),
      ],
    ),
    MovieModel(
      title: 'The Accountant',
      coverPath: 'assets/The Accountant 2.jpg',
      genre: ['Action', 'Sci-Fi'],
      rating: 6.7,
      description:
          "Christian Wolff applies his brilliant mind and illegal methods to reconstruct the unsolved puzzle of a Treasury chief's murder.",
      duration: '',
      actor: [
        ActorModel(
          actorImage: "assets/Ben Affleck.jpg",
          actorName: "Ben Affleck",
          alsoFeatured: "Bad Boyz",
        ),
        ActorModel(
          actorImage: "assets/Jon Bernthal.jpg",
          actorName: "Jon Bernthal",
          alsoFeatured: "House Party",
        ),
      ],
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
            return MovieCard(movieModel: newMovie.elementAt(index));
          },
        ),
      ],
    );
  }
}
