import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:medi_link/model/auth%20model/signup_model.dart';

// import 'user_model.dart';

class UserRepository {
  Future<Map<String, dynamic>> signUpUser(SignupModel user) async {
    final response = await http.post(
      Uri.parse(
        'http://10.0.2.2/medi_link_api/signup.php',
      ), // use emulator-safe localhost
      body: user.toJson(),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      return {
        'success': "false",
        'message': 'Server error: ${response.statusCode}',
      };
    }
  }
}
