import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glitch_app/data/model/movie_model.dart';
import 'package:glitch_app/pages/home_page.dart';
import 'package:glitch_app/pages/movie_page.dart';
import 'package:glitch_app/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString(
      'fonts/Bitcount_Prop_Single/OFL.txt',
    );
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  routes: {
      //  '/Movie': (context) => MoviePage(movie: null),
      // '/Homepage': (context) => HomePage(),
      //},

      //Declaring Routes
      onGenerateRoute: (settings) {
        final args = settings.arguments;
        return switch (settings.name) {
          HomePage.route => MaterialPageRoute(builder: (context) => HomePage()),
          MoviePage.route => MaterialPageRoute(
            builder: (context) => MoviePage(movie: args as MovieModel),
          ),
          _ => null,
        };
      },
      theme: AppTheme().theme,
      darkTheme: DarkTheme().theme,
      //home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
