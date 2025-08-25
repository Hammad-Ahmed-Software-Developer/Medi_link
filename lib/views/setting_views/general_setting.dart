import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medi_link/views/auth/signup/login.dart';
import 'package:medi_link/views/setting_views/notification_setting.dart';
import 'package:medi_link/views/setting_views/password_manager.dart';
// import 'package:medi_link/views/user_views/home_screen.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});

  final List<Map<String, dynamic>> settingsOptions = [
    {
      "icon": Icons.lightbulb_outline,
      "text": "Notification Setting",
      "onTap": () {
        Get.to(NotificationSetting());
      },
    },
    {
      "icon": Icons.key_outlined,
      "text": "Password Manager",
      "onTap": () {
        Get.to(PasswordManager());
      },
    },
    {
      "icon": Icons.person_outline,
      "text": "Delete Account",
      "onTap": () => print("Delete Account Clicked"),
    },
    {
      "icon": Icons.logout,
      "text": "logout",
      "onTap": () => Get.offAll(logIn()),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFEAF0FF),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.blue),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          "Settings",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
          ),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        itemCount: settingsOptions.length,
        itemBuilder: (context, index) {
          final item = settingsOptions[index];
          return Column(
            children: [
              InkWell(
                onTap: item["onTap"],
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 14.h,
                    horizontal: 12.w,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Row(
                    children: [
                      Icon(item["icon"], color: Colors.blue, size: 35.sp),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: Text(
                          item["text"],
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.blue,
                        size: 40.sp,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
            ],
          );
        },
      ),
    );
  }
}
