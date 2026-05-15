import 'package:flutter/material.dart';
import 'package:foody/pages/Bottom_Nav.dart';
import 'package:foody/pages/login.dart';
import 'package:foody/pages/signup.dart';
import 'pages/home.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  MyApp() {
    WidgetsFlutterBinding.ensureInitialized();
    Firebase.initializeApp();
    runApp(const MyApp());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpPage(),
    );
  }
}
