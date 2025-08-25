import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart'
    as secure_storage;

class HomeScreenController extends GetxController {
  var name = ''.obs;
  var image = ''.obs;

  final storage = secure_storage.FlutterSecureStorage();
    final List<int> days = List.generate(
    6,
    (index) => DateTime.now().add(Duration(days: index)).day,
  ).obs;

  final List<String> weekDays = ["MON", "TUE", "WED", "THU", "FRI", "SAT"].obs;

  @override
  void onInit() {
    super.onInit();
    getUser();
  }

  Future<void> getUser() async {
    final url = Uri.parse("http://10.0.2.2/medi_link_api/user_info_api.php");

    // 🔑 Token read from SecureStorage
    String? token = await storage.read(key: "jwt_token");

    if (token == null) {
      print("❌ No token found, please login first.");
      return;
    }

    try {
      final response = await http.get(
        url,
        headers: {
          "Content-Type": "application/json",
          "authorization": "Bearer $token", // small 'a'
        },
      );

      print("🔍 Status Code: ${response.statusCode}");
      print("🔍 Response Body: ${response.body}");

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        if (data["success"] == true) {
          print("✅ User Info: ${data['user']}");

          // example values set
          name.value = data['user']['name'] ?? '';
          image.value = data['user']['image'] ?? '';
        } else {
          print("⚠️ Error: ${data['message']}");
        }
      } else {
        print("❌ Server error: ${response.statusCode}");
      }
    } catch (e) {
      print("💥 Exception: $e");
    }
  }
}
