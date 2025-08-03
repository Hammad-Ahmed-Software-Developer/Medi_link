import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medi_link/controller/auth%20controller/login_controller.dart';
import 'package:medi_link/views/auth/signup/forget_password.dart';
import 'package:medi_link/views/auth/signup/signup.dart';
import 'package:flutter/foundation.dart';

class logIn extends StatelessWidget {
  logIn({super.key});

  var loginController = Get.put((LoginController()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Hello!',
            style: TextStyle(
              fontSize: 28.sp,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 8, 102, 245),
            ),
          ),
        ),
      ),
      body:  SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color.fromARGB(255, 253, 254, 255),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30.h),
                Padding(
                  padding: EdgeInsets.only(right: 250.w),
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 8, 102, 245),
                    ),
                  ),
                ),

                SizedBox(height: 10.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [SizedBox(height: 10.h)],
                ),
                // SizedBox(height: 20.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email or Mobile Number",
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      width: 350.w,
                      height: 50.h,
                      child: TextField(
                        controller: loginController.emailController,
                        keyboardType: TextInputType.emailAddress,
                        // controller: signUpController.email,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(66, 177, 211, 255),
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 60, 137, 224),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          hintText: 'example@example.com',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20.h),
                Obx(
                  () => SizedBox(
                    width: 350.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        SizedBox(
                          width: 350.w,
                          height: 50.h,
                          child: TextField(
                            controller: loginController.passwordController,
                            obscureText: loginController.obscureText.value,
                            // controller: signUpController.password,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  loginController.obscureText.value
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Color.fromARGB(255, 60, 137, 224),
                                ),
                                onPressed: () {
                                  loginController.togglePasswordVisibility();
                                },
                              ),

                              filled: true,
                              fillColor: Color.fromARGB(66, 177, 211, 255),
                              hintStyle: TextStyle(
                                color: Color.fromARGB(255, 60, 137, 224),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              hintText: '********',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              Get.to(() => ForgetPassword());
                            },
                            child: Text(
                              "Forget Password",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: 250.w,
                  height: 50.h,
                  child: ElevatedButton(
                    onPressed: () {
                      loginController.login_with_email();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 8, 102, 245),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                    ),
                    child: Text(
                      "Log In",
                      style: TextStyle(fontSize: 20.sp, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  "or",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                Obx(
                  () => IconButton(
                    onPressed: () {
                      loginController.login_fingerprint();
                    },
                    icon: Container(
                      width: 60.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(171, 149, 170, 240),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.fingerprint_outlined,
                        color: loginController.fingc_color.value,
                        size: 40.sp,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20.h),
                Container(
                  width: 300.w,
                  padding: EdgeInsets.all(8.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        textAlign: TextAlign.center,

                        TextSpan(
                          text: "Don't have an account?",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(() => Sign_up());
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Color.fromARGB(255, 8, 102, 245),
                          ),
                        ),
                      ),
                    ],
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
