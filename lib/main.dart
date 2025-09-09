import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glitch_app/features/auth/pages/signin_page.dart';
import 'package:glitch_app/features/auth/pages/signup_page.dart';
import 'package:glitch_app/features/auth/pages/welcome_page.dart';
import 'package:glitch_app/features/glitch_app/pages/home_page.dart';
import 'package:glitch_app/features/glitch_app/pages/movie_page.dart';
import 'package:glitch_app/common/theme/theme.dart';

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
        return switch (settings.name) {
          SignInPage.route => MaterialPageRoute(
            builder: (context) => SignInPage(),
          ),
          HomePage.route => MaterialPageRoute(builder: (context) => HomePage()),
          MoviePage.route => MaterialPageRoute(
            builder: (context) {
              final args = settings.arguments as MoviePageArguments;
              return MoviePage(movie: args.movieModel);
            },
          ),
          SignUpPage.route => MaterialPageRoute(
            builder: (context) => SignUpPage(),
          ),
          SplashPage.route => MaterialPageRoute(
            builder: (context) => SplashPage(),
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
