import 'package:get/get.dart';
import 'package:medi_link/views/auth/signup/signup.dart';

class Splash_controller extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // Simulate a delay for splash screen
    Future.delayed(Duration(seconds: 3), () {
      // Navigate to the home page after the delay
      Get.offAll(() => Sign_up(), transition: Transition.leftToRight);
    });
  }
}
