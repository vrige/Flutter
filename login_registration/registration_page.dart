import 'package:flutter/material.dart';
import 'components/textfield.dart';
import 'components/button.dart';
import 'components/square_tiles.dart';
import 'registration_compleated_page.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  final usernameController = TextEditingController();
  final mailController = TextEditingController();
  final passwordController = TextEditingController();

  void _signUserUp(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const RegistrationCompleated()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      resizeToAvoidBottomInset:
          false, // to avoid bottom overflow with the keyboard
      appBar: AppBar(
        title: Center(
          child: Text(
            'Registration Page',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 20,
            ),
          ),
        ),
        backgroundColor: Colors.grey[300],
        shadowColor: Colors.grey[300],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),

              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 120.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('images/img1.png'),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Username
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 20),

              // Mail
              MyTextField(
                controller: mailController,
                hintText: 'Mail',
                obscureText: false,
              ),

              const SizedBox(height: 20),

              // Password
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 20),

              MyButton(
                onTap: () {
                  _signUserUp(context);
                },
                text: "Sign Up",
              ),

              const SizedBox(height: 20),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1.0,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1.0,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // google + apple sign in buttons
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google button
                  SquareTile(imagePath: 'images/google.png'),

                  SizedBox(width: 25),

                  // apple button
                  SquareTile(imagePath: 'images/apple.png')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
