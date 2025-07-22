import 'package:flutter/material.dart';

class splash_2 extends StatelessWidget {
  const splash_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 220),
            Image.asset(
              'assets/images/logo.png', // Replace with your logo asset path
              width: 200, // Adjust the size as needed
              height: 200,
            ),
            const SizedBox(height: 20),
            const Text(
              'One Place Solution',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(235, 35, 125, 243),
                decoration: TextDecoration.none,
                // Match the theme color
              ),
            ),
            const SizedBox(height: 100),
            Container(
              width: 350,
              child: Text(
                textAlign: TextAlign.justify,
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            SizedBox(height: 100),
            Container(
              width: 250,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},

                child: Text(
                  "Log In",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 250,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 147, 185, 250),
                ),

                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
