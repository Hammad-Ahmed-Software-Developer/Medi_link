import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class custombottom_navigation extends StatelessWidget {
  custombottom_navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50.0.r),
      child: Container(
        width: 50.w,
        height: 50.h,

        decoration: BoxDecoration(
          color: Color.fromARGB(255, 8, 102, 245),
          borderRadius: BorderRadius.circular(100.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.home_outlined,
                size: 30.sp,
                color: Colors.white70,
              ),
              onPressed: () {
                // Navigate to home
              },
            ),
            IconButton(
              icon: Icon(
                Icons.messenger_outline,
                size: 30.sp,
                color: Colors.white70,
              ),
              onPressed: () {
                // Navigate to search
              },
            ),
            IconButton(
              icon: Icon(
                Icons.person_2_outlined,
                size: 30.sp,
                color: Colors.white70,
              ),
              onPressed: () {
                // Navigate to notifications
              },
            ),
            IconButton(
              icon: Icon(
                Icons.schedule_outlined,
                size: 30.sp,
                color: Colors.white70,
              ),
              onPressed: () {
                // Navigate to profile
              },
            ),
          ],
        ),
      ),
    );
  }
}
