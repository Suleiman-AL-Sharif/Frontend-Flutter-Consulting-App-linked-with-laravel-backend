import 'pages/ConsultingApp/main.dart';
import 'pages/splash_screen/splash.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'AAQ App',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AAQ App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const Splash(),
    );
  }
}
