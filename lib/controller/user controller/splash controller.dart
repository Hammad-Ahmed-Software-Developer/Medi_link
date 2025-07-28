import 'package:get/get.dart';
import 'package:medi_link/views/splash%20screen/second_splash.dart';

class Splash_controller extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // Simulate a delay for splash screen
    Future.delayed(Duration(seconds: 3), () {
      // Navigate to the home page after the delay
      Get.offAll(() => splash_2(), transition: Transition.leftToRight);
    });
  }
}
