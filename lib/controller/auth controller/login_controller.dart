import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:medi_link/model/api/signup_Api.dart';
import 'package:medi_link/model/auth%20model/signup_model.dart';
import 'package:medi_link/views/user_views/home_screen.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  var fingc_color = Color.fromARGB(255, 60, 137, 224).obs;
  var isLoading = false.obs;
  var obscureText = true.obs;
  TextEditingController passwordController = TextEditingController();
  var repository = UserRepository();

  void togglePasswordVisibility() {
    obscureText.value = !obscureText.value;
  }

  Future<void> login_fingerprint() async {
    LocalAuthentication localAuth = LocalAuthentication();
    bool isAvailable = await localAuth.canCheckBiometrics;

    if (isAvailable) {
      bool didAuthenticate = await localAuth.authenticate(
        localizedReason: 'Please authenticate to continue',
      );

      if (didAuthenticate) {
        fingc_color.value = Color.fromARGB(255, 112, 245, 3);
        await Future.delayed(Duration(milliseconds: 800));

        Get.to(() => HomeScreen());
      } else {
        fingc_color.value = Color.fromARGB(255, 245, 3, 3);
        Get.snackbar("Authentication Failed", "Please try again");
      }
    }

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
    if (response['success'] == true) {
      var jwt_token = response['token'];
      final storage = FlutterSecureStorage();

      Future<void> saveToken(String token) async {
        await storage.write(key: "jwt_token", value: token);
      }

      await saveToken(jwt_token);
      print("Token saved successfully in secure storage $jwt_token");

      // Handle successful signup
      // Get.snackbar('Success', 'User signed up successfully');
      // Future.delayed(Duration(seconds: 2), () {
      //   isLoading.value = false;
      // });
      Get.offAll(() => HomeScreen());

      // Navigate to another page or perform any other action
    } else {
      print(response['success']);
      print(response['message']);

      // debugger();

      Get.snackbar('Error', response['message'] ?? 'Signup failed');
    }
  }
}
