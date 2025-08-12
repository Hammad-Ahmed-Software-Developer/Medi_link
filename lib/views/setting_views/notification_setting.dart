import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationSetting extends StatefulWidget {
  NotificationSetting({super.key});

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  List<Map<String, dynamic>> notificationSettingList = [
    {"text": "General Notification", "mode": "0"},
    {"text": "Sound", "mode": "0"},
    {"text": "Sound Call", "mode": "0"},
    {"text": "Vibrate", "mode": "0"},
    {"text": "Special Offers", "mode": "0"},
    {"text": "Payments", "mode": "0"},
    {"text": "Promo And Discount", "mode": "0"},
    {"text": "Cashback", "mode": "0"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Notification Settings")),
          body: Center(
            child: ListView.separated(
              itemCount: notificationSettingList.length,
              separatorBuilder: (context, index) => SizedBox(height: 20.h),
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 200.w,
                      child: Text(
                        notificationSettingList[index]["text"],

                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                    ),

                    Transform.scale(
                      scale: 1.05.sp,
                      child: Switch(
                        activeColor: const Color.fromARGB(255, 2, 40, 253),
                        thumbColor: WidgetStateProperty.all(Colors.white),

                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: Colors.blue.withOpacity(0.3),

                        value: notificationSettingList[index]["mode"] == "1",
                        onChanged: (value) {
                          setState(() {
                            notificationSettingList[index]["mode"] =
                                value ? "1" : "0";
                          });
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
