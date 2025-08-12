import 'package:flutter/material.dart';
import 'package:get/get.dart';

class passwordManagerController extends GetxController {
  // Add your controller logic here
  // For example, you can define variables, methods, and lifecycle methods
  var isLoading = false.obs;
  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmNewPasswordController = TextEditingController();
  var isCurrentPasswordVisible = true.obs;
  var isNewPasswordVisible = true.obs;
  var isConfirmPasswordVisible = true.obs;
  Future<void> togglePasswordVisibility() async {
    isCurrentPasswordVisible.value = !isCurrentPasswordVisible.value;
  }

  Future<void> togglePassworddVisibility() async {
    isNewPasswordVisible.value = !isNewPasswordVisible.value;
  }

  Future<void> togglePasswordddVisibility() async {
    isConfirmPasswordVisible.value = !isConfirmPasswordVisible.value;
  }

  Future<void> changePassword() async {
    if (currentPasswordController.text.isEmpty ||
        newPasswordController.text.isEmpty ||
        confirmNewPasswordController.text.isEmpty) {
      Get.snackbar('Error', 'Please fill all fields');
      return;
    }

    if (newPasswordController.text != confirmNewPasswordController.text) {
      Get.snackbar('Error', 'New passwords do not match');
      return;
    }

    isLoading.value = true;

    // Simulate a network call or any password change logic
    await Future.delayed(Duration(seconds: 2));

    // Handle success or failure
    Get.snackbar('Success', 'Password changed successfully');

    currentPasswordController.clear();
    newPasswordController.clear();
    confirmNewPasswordController.clear();

    isLoading.value = false;
  }
}
