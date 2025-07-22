import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medi_link/views/splash%20screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily:
            'Poppins', // Optional: Use a modern rounded font if you like
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF179CE9), // Blue tone matching the UI
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xFF179CE9)),
          titleTextStyle: TextStyle(
            color: Color(0xFF179CE9),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
          bodyMedium: TextStyle(color: Colors.black54, fontSize: 14),
          labelLarge: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF2B68F7), // Same as "Add Review" button
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFF179CE9),
          unselectedItemColor: Colors.black26,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
        ),
        chipTheme: ChipThemeData(
          backgroundColor: Colors.grey.shade200,
          selectedColor: Color(0xFF179CE9),
          disabledColor: Colors.grey.shade100,
          labelStyle: const TextStyle(color: Colors.black),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),

      debugShowCheckedModeBanner: false,
      home: splash_screen(),
    );
  }
}
