import 'package:flutter/material.dart';
import 'package:medi_link/views/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      drawer: AppDrawer(), // Assuming you have a Drawer widget
      body: Center(
        child: Text(
          'Welcome to Home Screen',
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
