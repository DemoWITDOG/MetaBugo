import 'package:flutter/material.dart';
import 'package:metabugo/presentation/views/home_screen.dart';
import 'package:metabugo/presentation/views/sign_in.dart';
import 'package:metabugo/presentation/views/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
