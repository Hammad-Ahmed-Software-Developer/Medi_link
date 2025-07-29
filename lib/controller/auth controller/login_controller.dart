import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medi_link/model/api/signup_Api.dart';
import 'package:medi_link/model/auth%20model/signup_model.dart';
import 'package:medi_link/views/user_views/home_screen.dart';

class LoginController extends GetxController {
  var repository = UserRepository();
  var obscureText = true.obs;
  var isLoading = false.obs;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void togglePasswordVisibility() {
    obscureText.value = !obscureText.value;
  }

  void login_fingerprint() {
    print("Fingerprint login initiated");
  }

  Future<void> login_with_email() async {
    // Validate email and password
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar("Error", "Email and password cannot be empty");
      return;
    }
    isLoading.value = true;
    var response = await repository.loginUser(
      loginModel(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    if (response['success'] == "true") {
      // Handle successful signup
      Get.snackbar('Success', 'User signed up successfully');
      Future.delayed(Duration(seconds: 2), () {
        isLoading.value = false;
      });
      Get.offAll(() => HomeScreen());

      // Navigate to another page or perform any other action
    } else {
      // Handle error
      Get.snackbar('Error', response['message'] ?? 'Signup failed');
    }
  }
}
