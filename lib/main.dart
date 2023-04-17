import 'package:flutter/material.dart';
import 'package:nectar/screens/on_boarding.dart';
import 'package:nectar/screens/sign_in.dart';
import 'package:nectar/screens/signup.dart';
import 'package:nectar/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}
