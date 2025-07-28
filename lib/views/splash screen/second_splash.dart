import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_link/controller/user%20controller/splash_2_controller.dart';

class Splash2 extends StatelessWidget {
  Splash2({super.key});

  final regcontroller = Get.put(Splash2Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: 1.sw, // full screen width
        height: 1.sh, // full screen height
        child: SafeArea(
          child: Stack(
            children: [
              /// Logo
              Positioned(
                top: 100.h,
                left: (1.sw - 200.w) / 2,
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 200.w,
                  height: 200.h,
                ),
              ),

              /// Title Text
              Positioned(
                top: 320.h,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    'One Place Solution',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(235, 35, 125, 243),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),

              /// Description Text
              Positioned(
                top: 390.h,
                left: 20.w,
                right: 20.w,
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),

              /// Log In Button
              Positioned(
                bottom: 110.h,
                left: (1.sw - 250.w) / 2,
                child: SizedBox(
                  width: 250.w,
                  height: 60.h,
                  child: ElevatedButton(
                    onPressed: () {
                      regcontroller.loginroute();
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(fontSize: 22.sp, color: Colors.white),
                    ),
                  ),
                ),
              ),

              /// Sign Up Button
              Positioned(
                bottom: 30.h,
                left: (1.sw - 250.w) / 2,
                child: SizedBox(
                  width: 250.w,
                  height: 60.h,
                  child: ElevatedButton(
                    onPressed: () {
                      regcontroller.signuproute();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 147, 185, 250),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 22.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
