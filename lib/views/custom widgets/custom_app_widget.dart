import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeSlotWidget extends StatelessWidget {
  const TimeSlotWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 110.h,
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        color: Color(0xFFE9F0FF), // light blue background
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Date Row
          Center(
            child: Text(
              "11 Wednesday – Today",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 12.sp,
              ),
            ),
          ),
          SizedBox(height: 4.h),

          // Time + Appointment Row (single row shown due to limited height)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Time
              SizedBox(
                width: 50.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    timeText("9 AM"),
                    SizedBox(height: 8.h),
                    timeText("10 AM"),
                    SizedBox(height: 8.h),
                    timeText("11 AM"),
                  ],
                ),
              ),

              // Appointment Box with dotted line
              Expanded(
                child: Container(
                  height: 60,
                  margin: EdgeInsets.only(left: 8.w, top: 4.h),
                  child: Stack(children: [dottedLine(), appointmentBox()]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget timeText(String time) {
    return Text(
      time,
      style: TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.w500,
        fontSize: 10.sp,
      ),
    );
  }

  Widget dottedLine() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = 4.0.w;
        final dashCount = (boxWidth / (2.w * dashWidth)).floor();
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: 1.h,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.blue),
              ),
            );
          }),
        );
      },
    );
  }

  Widget appointmentBox() {
    return Positioned(
      top: 0.h,
      child: Container(
        width: 240.w,

        padding: EdgeInsets.all(8.r),
        decoration: BoxDecoration(
          color: Color(0xFFD6E4FF),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Dr. Olivia Turner, M.D.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2F5DB5),
                      fontSize: 12.sp,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Icon(Icons.check_circle, size: 14.sp, color: Colors.blue),
                SizedBox(width: 4.w),
                Icon(Icons.cancel, size: 14.sp, color: Colors.grey),
              ],
            ),
            SizedBox(height: 2.h),
            Text(
              "Treatment and prevention of\nskin and photodermatitis.",
              style: TextStyle(fontSize: 10.sp),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
