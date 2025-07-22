import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medi_link/controller/user%20controller/splash%20controller.dart';

class splash_screen extends StatelessWidget {
  final Splash_controller splashcontroller;

  splash_screen({super.key}) : splashcontroller = Get.put(Splash_controller());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(235, 35, 125, 243),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png', // Replace with your logo asset path
              width: 200, // Adjust the size as needed
              height: 200,
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to MediLink',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
                decoration: TextDecoration.none,
                // Match the theme color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
