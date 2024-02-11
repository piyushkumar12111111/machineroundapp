import 'package:flutter/material.dart';
import 'package:machineroundhemant/homepage.dart'; // Ensure this path is correct

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: HomeScreen(), // Removed the 'const' from this line
        ),
      ),
    );
  }
}
