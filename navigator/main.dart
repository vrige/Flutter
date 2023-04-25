import 'package:flutter/material.dart';
import 'page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'cat app',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const Page1(),
    );
  }
}
