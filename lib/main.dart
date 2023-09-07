import 'dart:io';
import 'package:flutter/material.dart';
import 'package:taht/features/user/screens/login_screen.dart'; // Import your LoginScreen
import 'package:taht/shared/network/http_overrides.dart'; // Import your custom HttpOverrides

void main() {
  HttpOverrides.global = new MyHttpOverrides(); // Replace MyHttpOverrides with your custom class if necessary
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Replace MyHomePage with your LoginScreen
      home: LoginScreen(), 
    );
  }
}
