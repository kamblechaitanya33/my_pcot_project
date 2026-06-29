import 'package:flutter/material.dart';
import 'package:my_pcot_project/views/dashboard.dart';

void main() {
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
    MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home:   BottomNavScreen(),
    );
  }
}
