import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  String _otpCode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forget Password')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 50.w, right: 50.w),
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                animationType: AnimationType.fade,
                autoFocus: true,
                controller: TextEditingController(text: _otpCode),
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 50,
                  fieldWidth: 50,
                  activeFillColor: Colors.white,
                  selectedColor: Colors.blue,
                  inactiveColor: Colors.grey,
                  activeColor: Colors.green,
                ),
                onChanged: (value) {
                  setState(() {
                    _otpCode = value;
                  });
                  print("OTP Changed: $value");
                },
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 220.w,
              height: 45.h,
              child: ElevatedButton(
                onPressed: () {
                  // Verify OTP logic
                },
                child: Text(
                  "Verify",
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
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
