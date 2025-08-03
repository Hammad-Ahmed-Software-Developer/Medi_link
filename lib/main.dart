import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medi_link/views/auth/signup/login.dart';
import 'package:medi_link/views/splash%20screen/splash_screen.dart';
import 'package:medi_link/views/user_views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            // Initialize ScreenUtil for responsive design
            return GetMaterialApp(
              title: 'Flutter Demo',
              builder: (context, child) {
                // Import screenutil and initialize here
                // Add this import at the top: import 'package:flutter_screenutil/flutter_screenutil.dart';
                ScreenUtil.init(
                  context,
                  designSize: const Size(
                    411, // Base width for responsive design
                    891,
                  ), // iPhone X size, adjust as needed
                  minTextAdapt: true,
                  splitScreenMode: true,
                );
                return child!;
              },
              theme: ThemeData(
                fontFamily: 'Poppins',
                colorScheme: ColorScheme.fromSeed(
                  seedColor: Color(0xFF179CE9),
                  brightness: Brightness.light,
                ),
                scaffoldBackgroundColor: Colors.white,
                appBarTheme: AppBarTheme(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  iconTheme: IconThemeData(color: Color(0xFF179CE9)),
                  titleTextStyle: TextStyle(
                    color: Color(0xFF179CE9),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                textTheme: TextTheme(
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
                    backgroundColor: Color(0xFF2B68F7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
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
                  labelStyle: TextStyle(color: Colors.black),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              debugShowCheckedModeBanner: false,
              home: HomeScreen(),
            );
          },
        );
      },
    );
  }
}
