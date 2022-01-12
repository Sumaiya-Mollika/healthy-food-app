import 'package:flutter/material.dart';
import 'package:nutrition_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nutrition App',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
