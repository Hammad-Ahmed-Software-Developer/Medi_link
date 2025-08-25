import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medi_link/controller/auth%20controller/password_manager_controller.dart';

class PasswordManager extends StatelessWidget {
  PasswordManager({super.key});
  final passwordController = Get.put(passwordManagerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Password Manager')),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Current Password",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),

                    SizedBox(height: 10.h),
                    Obx(
                      () => SizedBox(
                        width: 350.w,
                        height: 40.h,
                        child: TextField(
                          obscureText:
                              !passwordController
                                  .isCurrentPasswordVisible
                                  .value,

                          controller:
                              passwordController.currentPasswordController,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                passwordController
                                        .isCurrentPasswordVisible
                                        .value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Color.fromARGB(255, 60, 137, 224),
                              ),
                              onPressed: () {
                                passwordController.togglePasswordVisibility(
                                  passwordController.isCurrentPasswordVisible,
                                );
                              },
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(66, 177, 211, 255),
                            hintStyle: TextStyle(
                              color: Color.fromARGB(255, 60, 137, 224),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            hintText: '*********',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 60, 137, 224),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New Password",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Obx(
                      () => SizedBox(
                        width: 350.w,
                        height: 40.h,
                        child: TextField(
                          obscureText:
                              !passwordController.isNewPasswordVisible.value,
                          controller: passwordController.newPasswordController,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                passwordController.isNewPasswordVisible.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Color.fromARGB(255, 60, 137, 224),
                              ),
                              onPressed: () {
                                passwordController.togglePasswordVisibility(
                                  passwordController.isNewPasswordVisible,
                                );
                              },
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(66, 177, 211, 255),
                            hintStyle: TextStyle(
                              color: Color.fromARGB(255, 60, 137, 224),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            hintText: '*********',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 10.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Confirm New Password",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Obx(
                          () => SizedBox(
                            width: 350.w,
                            height: 40.h,
                            child: TextField(
                              obscureText:
                                  !passwordController
                                      .isConfirmPasswordVisible
                                      .value,
                              controller:
                                  passwordController
                                      .confirmNewPasswordController,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    passwordController
                                            .isConfirmPasswordVisible
                                            .value
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Color.fromARGB(255, 60, 137, 224),
                                  ),
                                  onPressed: () {
                                    passwordController.togglePasswordVisibility(
                                      passwordController
                                          .isConfirmPasswordVisible,
                                    );
                                  },
                                ),
                                filled: true,
                                fillColor: Color.fromARGB(66, 177, 211, 255),
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 60, 137, 224),
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                hintText: '*********',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 320.h),
                Container(
                  width: 350.w,
                  height: 50.h,
                  margin: EdgeInsets.only(top: 20.h),
                  child: ElevatedButton(
                    onPressed: () {
                      passwordController.changePassword();
                    },
                    child: Text(
                      "change Password",
                      style: TextStyle(fontSize: 20.sp, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
