import 'package:flutter/material.dart';
import 'package:glitch_app/features/auth/pages/signin_page.dart';
import 'package:glitch_app/features/auth/pages/signup_page.dart';
import 'package:glitch_app/features/auth/widgets/auth_button.dart';
import 'package:glitch_app/features/auth/widgets/welcome_button.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  static const String route = '/';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/man-3786991_1280.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'All ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                Text(
                  'your shows ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                Text(
                  'in one place',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 50,
            left: 10,
            child: Text(
              'Glitch App',
              style: TextStyle(
                letterSpacing: 1,
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),

          /*Positioned(
            bottom: 100,
            right: 50,
            left: 50,
            child: Align(
              alignment: Alignment.center,
              child: AuthButton(
                buttonText: 'START',
                widget: Icon(Icons.play_arrow),
                onPressed: () {
                  Navigator.of(
                    context,
                  ).pushNamed(SignInPage.route, arguments: null);
                },
              ),
            ),
          ),*/
          Positioned(
            bottom: 10,
            right: 10,
            left: 10,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: WelcomeButton(
                      color: Theme.of(context).colorScheme.outline,
                      label: 'Sign In',
                      onTap: () {
                        Navigator.of(
                          context,
                        ).pushNamed(SignInPage.route, arguments: null);
                      },
                      textColor: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      color: Theme.of(context).colorScheme.onPrimary,
                      label: 'Sign Up',
                      onTap: () {
                        Navigator.of(
                          context,
                        ).pushNamed(SignUpPage.route, arguments: null);
                      },
                      textColor: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
