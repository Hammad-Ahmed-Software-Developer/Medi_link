class SignupModel {
  final String username;

  final String password;
  final String email;
  final String mobileNo;
  final String dob;

  SignupModel({
    required this.username,

    required this.password,
    required this.email,
    required this.mobileNo,
    required this.dob,
  });

  Map<String, dynamic> toJson() => {
    'name': username,
    'email': email,
    'password': password,
    'mobileNo': mobileNo,
    'dob': dob,
  };
}

class loginModel {
  final String email;
  final String password;

  loginModel({required this.email, required this.password});

  Map<String, dynamic> toJson() => {'email': email, 'password': password};
}
