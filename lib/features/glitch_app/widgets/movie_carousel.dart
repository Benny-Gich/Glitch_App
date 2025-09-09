import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:glitch_app/features/glitch_app/data/model/actor_model.dart';
import 'package:glitch_app/features/glitch_app/data/model/movie_model.dart';
import 'package:glitch_app/features/glitch_app/widgets/movie_card.dart';

class MovieCarousel extends StatefulWidget {
  const MovieCarousel({super.key});

  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  final List<MovieModel> movieModel = [
    MovieModel(
      title: 'Need For Speed',
      coverPath: 'assets/Need_For_Speed_poster.jpg',
      genre: ['Action', 'Combat'],
      rating: 7.9,
      description:
          'Fresh from prison, a street racer who was framed by a wealthy business associate joins a cross-country race with revenge in mind. His ex-partner, learning of the plan, places a massive bounty on his head as the race begins.',
      duration: '132 Minutes',
      actor: [
        ActorModel(
          actorImage: "assets/Aaron Paul.jpg",
          actorName: "Aaron Paul",
          alsoFeatured: "Tokyo Drift",
        ),
      ],
    ),
    MovieModel(
      title: 'Fast X',
      coverPath: 'assets/Fast_X_poster.jpg',
      genre: ['Action', 'Cars'],
      rating: 8.0,
      description:
          'Dom Toretto and his family are targeted by the vengeful son of drug kingpin Hernan Reyes.',
      duration: '141 Minutes',
      actor: [
        ActorModel(
          actorImage: "assets/Vin Diesel.jpg",
          actorName: "Vin Diesel",
          alsoFeatured: "Fast and Furious",
        ),
      ],
    ),
    MovieModel(
      title: 'Transformers',
      coverPath: 'assets/Transformers-_Rise_of_the_Beasts.jpg',
      genre: ['Action', 'Sci-Fi'],
      rating: 8.2,
      description:
          "During the '90s, a new faction of Transformers - the Maximals - join the Autobots as allies in the battle for Earth.",
      duration: '127 Minutes',
      actor: [
        ActorModel(
          actorImage: "assets/Anthony Ramos.jpg",
          actorName: "Anthony Ramos",
          alsoFeatured: "6 Underground",
        ),
      ],
    ),
    MovieModel(
      title: 'Cars_2006',
      coverPath: 'assets/Cars_2006.jpg',
      genre: ['Cartoon', 'Comic'],
      rating: 8.5,
      description:
          "On the way to the biggest race of his life, a hotshot rookie race car gets stranded in a rundown town and learns that winning isn't everything in life.",
      duration: "116 Minutes",
      actor: [
        ActorModel(
          actorImage: "assets/Owen WIlson.jpg",
          actorName: "Owen Wilson",
          alsoFeatured: "Turbo",
        ),
      ],
    ),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            height: 300,
            autoPlay: true,
            viewportFraction: 0.6,
            enlargeCenterPage: true,

            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          itemCount: movieModel.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return MovieCard(movieModel: movieModel.elementAt(index));
          },
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: movieModel.asMap().entries.map((index) {
            return Container(
              height: 12,
              width: 12,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentIndex == index.key
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.onSecondary,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
