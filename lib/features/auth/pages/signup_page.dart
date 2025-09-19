import 'package:flutter/material.dart';
import 'package:glitch_app/features/auth/widgets/auth_button.dart';
import 'package:glitch_app/features/auth/widgets/auth_field.dart';
import 'package:glitch_app/features/glitch_app/pages/home_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  static const String route = '/SignUp';

  @override
  State<SignUpPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignUpPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool? isSelected = false;
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceDim,
      appBar: AppBar(
        leading: IconButton.filled(
          style: FilledButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: Theme.of(context).colorScheme.outline,
        title: Text(
          'Glitch App',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            //SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(20),
                  //color: Theme.of(context).colorScheme.primaryContainer,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Form(
                    child: Column(
                      key: formKey,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Create Account!',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Name',
                          textAlign: TextAlign.right,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SizedBox(height: 10),
                        AuthField(
                          controller: nameController,
                          helptext: 'John Doe',
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Email',
                          textAlign: TextAlign.right,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SizedBox(height: 10),
                        AuthField(
                          controller: emailController,
                          helptext: 'johndoe@gmail.com',
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Password',
                          textAlign: TextAlign.right,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SizedBox(height: 10),
                        AuthField(
                          controller: passwordController,
                          helptext: 'Enter your password',
                          isObscuretext: true,
                          widget: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.visibility_off),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Checkbox(
                              tristate: true,
                              value: isSelected,
                              onChanged: (newBool) {
                                setState(() {
                                  isSelected = newBool;
                                });
                              },
                              activeColor: Theme.of(
                                context,
                              ).colorScheme.secondary,
                              checkColor: Theme.of(context).colorScheme.primary,
                            ),
                            Text('Remember Me'),
                            Spacer(flex: 2),
                            RichText(
                              text: TextSpan(
                                text: 'Forgot Password',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        AuthButton(
                          buttonText: 'Create Account',
                          onPressed: () {
                            Navigator.of(
                              context,
                            ).pushNamed(HomePage.route, arguments: null);
                          },
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.7,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Text(
                                'or Sign up with',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 0.7,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  height: 50,
                                  width: 50,
                                  'assets/facebook.png',
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  height: 50,
                                  width: 50,
                                  'assets/google.png',
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  height: 50,
                                  width: 50,
                                  'assets/apple.png',
                                ),
                              ),
                            ),
                          ],
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
