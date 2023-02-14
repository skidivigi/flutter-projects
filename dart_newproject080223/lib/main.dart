import 'package:dart_newproject080223/ui/screens/cars_page.dart';
import 'package:dart_newproject080223/ui/screens/home_page.dart';
import 'package:dart_newproject080223/ui/screens/login_screen.dart';
import 'package:dart_newproject080223/ui/screens/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
    );
  }
}
