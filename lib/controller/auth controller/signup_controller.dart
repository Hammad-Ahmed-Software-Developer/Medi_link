import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medi_link/model/api/signup_Api.dart';
import 'package:medi_link/model/auth%20model/signup_model.dart';

class SignupController extends GetxController {
  // Add your controller logic here
  // For example, you can define variables, methods, and lifecycle methods
  var isLoading = false.obs;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobileNo = TextEditingController();
  TextEditingController dob = TextEditingController();
  var repository = UserRepository();
  var isPasswordVisible = true.obs;
  Future<void> togglePasswordVisibility() async {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  Future<void> signUp() async {
    SignupModel user = SignupModel(
      username: usernameController.text,
      password: passwordController.text,
      email: email.text,
      mobileNo: mobileNo.text,
      dob: dob.text,
    );
    if (usernameController.text.isEmpty ||
        passwordController.text.isEmpty ||
        email.text.isEmpty ||
        mobileNo.text.isEmpty ||
        dob.text.isEmpty) {
      Get.snackbar('Error', 'Please fill all fields');
      return;
    }
    isLoading.value = true;
    var response = await repository.signUpUser(user);
    if (response['success'] == "true") {
      // Handle successful signup
      Get.snackbar('Success', 'User signed up successfully');
      usernameController.clear();
      passwordController.clear();
      email.clear();
      mobileNo.clear();
      dob.clear();
      // Navigate to another page or perform any other action
    } else {
      // Handle error
      Get.snackbar('Error', response['message'] ?? 'Signup failed');
    }
    // Simulate a network call or any signup logic

    Future.delayed(Duration(seconds: 2), () {
      isLoading.value = false;
      // Handle success or failure
    });
  }
}
