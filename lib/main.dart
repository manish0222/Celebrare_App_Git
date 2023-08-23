import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: Color.fromARGB(255, 93, 64, 188),
      )),
      debugShowCheckedModeBanner: false, // remove debugmode tag
      home: SplashScreen(), // Show the splash screen initially
    );
  }
}
