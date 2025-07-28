import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medi_link/controller/user%20controller/splash_2_controller.dart';

class splash_2 extends StatelessWidget {
  splash_2({super.key});
  var splash2Controller = Get.put((Splash2Controller()));

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromARGB(255, 255, 255, 255),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100.h),
            Image.asset(
              'assets/images/logo.png', // Replace with your logo asset path
              width: 200, // Adjust the size as needed
              height: 200,
            ),
            SizedBox(height: 20.h),
            Text(
              'One Place Solution',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(235, 35, 125, 243),
                decoration: TextDecoration.none,
                // Match the theme color
              ),
            ),
            SizedBox(height: 100.h),
            Center(
              child: Container(
                width: 350.w,
                // height: 100.h,
                child: Text(
                  textAlign: TextAlign.center,
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.h),
            Container(
              width: 250.w,
              height: 60.h,
              child: ElevatedButton(
                onPressed: () {
                  splash2Controller.loginroute();
                },

                child: Text(
                  "Log In",
                  style: TextStyle(fontSize: 22.sp, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Container(
              width: 250.w,
              height: 60.h,
              child: ElevatedButton(
                onPressed: () {
                  splash2Controller.signuproute();
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
          ],
        ),
      ),
    );
  }
}
