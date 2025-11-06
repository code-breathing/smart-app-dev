import 'package:flutter/material.dart';

void main() {}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 33, 150, 243), // Blue
        foregroundColor: const Color.fromARGB(255, 255, 255, 255), // White
        leading: Icon(Icons.home),
        title: Text("My flutter project"),
      ),
    );
  }
}
