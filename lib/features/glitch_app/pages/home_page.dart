import 'package:flutter/material.dart';
import 'package:glitch_app/features/auth/pages/welcome_page.dart';
import 'package:glitch_app/features/glitch_app/widgets/movie_carousel.dart';
import 'package:glitch_app/features/glitch_app/widgets/movie_grid.dart';
import 'package:glitch_app/features/glitch_app/widgets/top_button.dart';
import 'package:glitch_app/features/glitch_app/widgets/top_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String route = '/Home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceDim,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TopButton(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets/marcus-holloway-5120x2880-watch-dogs-2-5k-862.JPG',
                          ),
                        ),
                      ),
                      IconButton.filled(
                        style: FilledButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            SplashPage.route,
                            arguments: null,
                          );
                        },
                        icon: Icon(Icons.menu_open),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  TopTile(),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular',
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'View all',
                          style: GoogleFonts.roboto(
                            fontSize: 12,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  MovieCarousel(),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'New',
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'View All',
                          style: GoogleFonts.roboto(
                            fontSize: 12,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  MovieGrid(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
