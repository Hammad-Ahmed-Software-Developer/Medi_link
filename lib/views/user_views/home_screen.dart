import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_link/views/custom%20widgets/bottomnavigate.dart';
import 'package:medi_link/views/custom%20widgets/custom_app_widget.dart';
import 'package:medi_link/views/custom%20widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<int> days = List.generate(
    6,
    (index) => DateTime.now().add(Duration(days: index)).day,
  );

  final List<String> weekDays = ["MON", "TUE", "WED", "THU", "FRI", "SAT"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color.fromARGB(255, 253, 254, 255),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 150.0.h,
                child: Stack(
                  children: [
                    Positioned(
                      top: 20.0.h,
                      left: 30.0.w,
                      child: CircleAvatar(
                        radius: 30.0.r,
                        backgroundImage: AssetImage(
                          'assets/images/profile.png',
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30.0.h,
                      left: 100.0.w,
                      child: Text(
                        'Hi, WellcomeBack',
                        style: TextStyle(
                          fontSize: 12.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 8, 102, 245),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50.0.h,
                      left: 100.0.w,
                      child: Text(
                        'John Doe',
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20.0.h,
                      right: 30.0.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0.r),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.notifications),
                              iconSize: 24.0.sp,
                              onPressed: () {
                                // Handle notification icon press
                              },
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.settings),
                            onPressed: () {
                              // Handle settings icon press
                            },
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 20.0.h,
                      left: 30.0.w,
                      child: Container(
                        width: 350.0.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.monitor_heart_outlined,
                                    size: 30.0.sp,
                                    color: Color.fromARGB(255, 8, 102, 245),
                                  ),
                                  onPressed: () {
                                    // Navigate to home
                                  },
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.favorite_border_outlined,
                                    size: 30.0.sp,
                                    color: Color.fromARGB(255, 8, 102, 245),
                                  ),
                                  onPressed: () {
                                    // Navigate to search
                                  },
                                ),
                              ],
                            ),
                            Container(
                              width: 250.w,
                              height: 40.h,
                              child: TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: 'Search...',
                                  filled: true,
                                  fillColor: Color.fromARGB(206, 121, 157, 211),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0.r),
                                    borderSide: BorderSide.none,
                                  ),
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color: Color.fromARGB(255, 8, 102, 245),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 250.0.h,
                color: Color.fromARGB(206, 121, 157, 211),
                padding: EdgeInsets.symmetric(vertical: 14.0.r),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(6, (index) {
                        final isSelected = index == 2;
                        return Container(
                          width: 45.0.w,
                          padding: EdgeInsets.symmetric(vertical: 20.r),
                          decoration: BoxDecoration(
                            color:
                                isSelected ? Color(0xFF3D6AFF) : Colors.white,
                            borderRadius: BorderRadius.circular(20.0.r),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "${days[index]}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0.sp,
                                  color:
                                      isSelected ? Colors.white : Colors.black,
                                ),
                              ),
                              SizedBox(height: 4.0.h),
                              Text(
                                weekDays[index],
                                style: TextStyle(
                                  fontSize: 12.0.sp,
                                  color:
                                      isSelected ? Colors.white : Colors.black,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 10.0.h),
                    Container(
                      // height: 110.0.h,
                      // width: 350.0.w,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: TimeSlotWidget(),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(30.0.r),
                  child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return appointmentSlot(); 
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: custombottom_navigation(),
    );
  }

 

  Widget appointmentSlot() {
    return Card(
      margin: EdgeInsets.only(bottom: 11.h),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100.0.r),
      ),
      child: Container(
        height: 110.h,
        width: 300.w,
        decoration: BoxDecoration(
          color: Color.fromARGB(206, 121, 157, 211),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 15.h,
              left: 10.w,
              child: CircleAvatar(
                radius: 35.r,
                backgroundImage: AssetImage('assets/images/logo.png'),
              ),
            ),
            Positioned(
              top: 10.h,
              left: 90.w,
              child: Container(
                width: 250.w,
                height: 60.h,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. John Doe',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w900,
                          color: Colors.blueAccent,
                        ),
                      ),
                      // SizedBox(height: 4.h),
                      Text(
                        'Cardiologist',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontStyle: FontStyle.italic,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 5.h,
              left: 90.w,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 253, 253, 253),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                width: 60.w,
                height: 30.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, size: 16.sp, color: Colors.blueAccent),
                    SizedBox(width: 5.w),
                    Text(
                      '5',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 5.h,
              left: 160.w,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 253, 253, 253),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                width: 60.w,
                height: 30.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, size: 16.sp, color: Colors.blueAccent),
                    SizedBox(width: 5.w),
                    Text(
                      '5',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 5.h,
              right: 70.w,
              child: CircleAvatar(
                radius: 15.r, // size of the circle
                backgroundColor:  Colors.white, // background color
                child: Icon(
                  Icons.question_mark,
                  // icon color
                  size: 15.sp,
                 color:   Colors.blue,
                ),
              ),
            ),
            Positioned(
              bottom: 5.h,
              right: 30.w,
              child: CircleAvatar(
                radius: 15.r, // size of the circle
                backgroundColor:  Colors.white, // background color
                child: Icon(
                  Icons.favorite_border,
                  // icon color
                  size: 15.sp,
                 color:   Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
