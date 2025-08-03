import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_link/views/custom%20widgets/bottomnavigate.dart';
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
                height: 150.h,
                child: Stack(
                  children: [
                    Positioned(
                      top: 20.h,
                      left: 30.w,
                      child: CircleAvatar(
                        radius: 30.r,
                        backgroundImage: AssetImage(
                          'assets/images/profile.png',
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30.h,
                      left: 100.w,
                      child: Text(
                        'Hi, WellcomeBack',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 8, 102, 245),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50.h,
                      left: 100.w,
                      child: Text(
                        'John Doe',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20.h,
                      right: 30.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.notifications),
                              iconSize: 24.sp,
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
                      bottom: 20.h,
                      left: 30.w,
                      child: Container(
                        width: 350.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.monitor_heart_outlined,
                                    size: 30.sp,
                                    color: Color.fromARGB(255, 8, 102, 245),
                                  ),
                                  onPressed: () {
                                    // Navigate to home
                                  },
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.favorite_border_outlined,
                                    size: 30.sp,
                                    color: Color.fromARGB(255, 8, 102, 245),
                                  ),
                                  onPressed: () {
                                    // Navigate to search
                                  },
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                child: TextField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    hintText: 'Search...',
                                    filled: true,
                                    fillColor: Color.fromARGB(
                                      206,
                                      121,
                                      157,
                                      211,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.r),
                                      borderSide: BorderSide.none,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.search,
                                      color: Color.fromARGB(255, 8, 102, 245),
                                    ),
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
                height: 250.h,
                color: Color.fromARGB(206, 121, 157, 211),
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(6, (index) {
                        final isSelected = index == 2;
                        return Container(
                          width: 45,
                          padding: EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            color:
                                isSelected ? Color(0xFF3D6AFF) : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "${days[index]}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color:
                                      isSelected ? Colors.white : Colors.black,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                weekDays[index],
                                style: TextStyle(
                                  fontSize: 12,
                                  color:
                                      isSelected ? Colors.white : Colors.black,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      width: 350.w,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      height: 120.h,
                      child: Column(children: [
                          
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
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

  Widget timeSlot(String time) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        time,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
      ),
    );
  }

  Widget appointmentSlot() {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xFFDEE8FF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dr. Olivia Turner, M.D.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3D6AFF),
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Treatment and prevention of\nskin and photodermatitis.",
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
