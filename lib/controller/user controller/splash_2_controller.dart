import 'package:get/get.dart';
import 'package:medi_link/views/auth/signup/login.dart';
import 'package:medi_link/views/auth/signup/signup.dart';

class Splash2Controller extends GetxController {
  Future<void> signuproute() async {
    Get.to(() => Sign_up());
  }

  Future<void> loginroute() async {
    Get.to(logIn());
  }
}
