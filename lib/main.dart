import 'package:flutter/material.dart';
import 'package:onsip/views/home/home_view.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onsip',
      home: HomeView()
      );
  }
}