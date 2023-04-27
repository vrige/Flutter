import 'package:flutter/material.dart';
import 'components/button.dart';
import 'login_page.dart';
import 'registration_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  void _logIn(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void _singUp(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RegistrationPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Center(
          child: Text(
            'Welcome Page',
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
        child: Column(
          children: [
            const SizedBox(height: 30),

            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 150.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('images/img1.png'),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Divider(
              thickness: 1.0,
              color: Colors.grey[400],
            ),

            // Welcome to this new app let\'s learn with Gamification!!!
            Center(
              child: Text(
                'Welcome to this new app\nlet\'s learn with Gamification!!!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 22,
                  height: 1.5,
                ),
              ),
            ),

            const SizedBox(height: 10),

            Divider(
              thickness: 1.0,
              color: Colors.grey[400],
            ),

            const SizedBox(height: 10),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              alignment: Alignment.center,
              child: Text(
                'Est modus in rebus, sunt certi denique fines quos ultra citraque nequit consistere rectum.\n'
                'Est modus in rebus, sunt certi denique fines quos ultra citraque nequit consistere rectum.\n'
                'Est modus in rebus, sunt certi denique fines quos ultra citraque nequit consistere rectum.\n',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 18,
                  height: 1.5,
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonHalf(
                    onTap: () {
                      _logIn(context);
                    },
                    text: 'Login'),
                ButtonHalf(
                    onTap: () {
                      _singUp(context);
                    },
                    text: 'Sign Up'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
