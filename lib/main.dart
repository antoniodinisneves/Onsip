import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:onsip/views/home/home_view.dart';
import 'firebase_options.dart'; // Automatically generated file by FlutterFire CLI

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase with your FirebaseOptions
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // Use the generated FirebaseOptions
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: HomeView(),
    );
  }
}