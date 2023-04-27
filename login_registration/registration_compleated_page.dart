import 'package:flutter/material.dart';
import 'dart:async';
import 'login_page.dart';

class RegistrationCompleated extends StatefulWidget {
  const RegistrationCompleated({super.key});

  @override
  State<RegistrationCompleated> createState() => _RegistrationCompleatedState();
}

class _RegistrationCompleatedState extends State<RegistrationCompleated> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () async {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text('Registration Finished'),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        alignment: Alignment.center,
        child: const Text(
          'The registration was successful!!!\n You will be soon redirected to the login page.\n'
          'Please insert the new credentials in the login page to sign in.\n'
          'You will be redirect to the login page',
        ),
      ),
    );
  }
}
