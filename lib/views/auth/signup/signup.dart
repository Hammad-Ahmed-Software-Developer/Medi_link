import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medi_link/controller/auth%20controller/signup_controller.dart';

class Sign_up extends StatelessWidget {
  Sign_up({super.key});

  final signUpController = Get.put(SignupController());

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'New Account',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 23, 107, 233),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color.fromARGB(255, 253, 254, 255),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Full name",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: TextField(
                        controller: signUpController.usernameController,
                        decoration: InputDecoration(
                          filled: true, // ← Enables background fill
                          fillColor: Color.fromARGB(66, 177, 211, 255),
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 60, 137, 224),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                          hintText: 'Your Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(height: 10),
                    Obx(
                      () => SizedBox(
                        width: 350,
                        height: 50,
                        child: TextField(
                          obscureText:
                              !signUpController.isPasswordVisible.value,
                          controller: signUpController.passwordController,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                signUpController.isPasswordVisible.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Color.fromARGB(255, 60, 137, 224),
                              ),
                              onPressed: () {
                                signUpController.togglePasswordVisibility();
                              },
                            ),

                            filled: true, // ← Enables background fill
                            fillColor: Color.fromARGB(
                              66,
                              177,
                              211,
                              255,
                            ), // ← Light blue backgrounsd color
                            hintStyle: TextStyle(
                              color: Color.fromARGB(255, 60, 137, 224),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            hintText: '*********',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: signUpController.email,
                        decoration: InputDecoration(
                          filled: true, // ← Enables background fill
                          fillColor: Color.fromARGB(66, 177, 211, 255),
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 60, 137, 224),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                          hintText: 'example@example.com',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mobile Number",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        controller: signUpController.mobileNo,
                        decoration: InputDecoration(
                          filled: true, // ← Enables background fill
                          fillColor: Color.fromARGB(66, 177, 211, 255),
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 60, 137, 224),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                          hintText: '+9212345678',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date Of Birth",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: TextField(
                        controller: signUpController.dob,
                        decoration: InputDecoration(
                          filled: true, // ← Enables background fill
                          fillColor: Color.fromARGB(66, 177, 211, 255),
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 60, 137, 224),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                          hintText: '    DD/MM/YY',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: 200,
                  padding: const EdgeInsets.all(8),
                  child: Text.rich(
                    TextSpan(
                      text: 'By continue you agree to ',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Terms of Service',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: ' and ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: 'Privacy Policy.',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 10),
                Obx(
                  () => SizedBox(
                    height: 50,
                    width: 250,
                    child:
                        signUpController.isLoading.value
                            ? CircularProgressIndicator()
                            : ElevatedButton(
                              onPressed: () {
                                signUpController.signUp();
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "or sign up with",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.g_mobiledata_outlined,
                        color: Colors.blue,
                        size: 70,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.facebook_rounded,
                        color: Colors.blue,
                        size: 50,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.fingerprint,
                        color: Colors.blue,
                        size: 50,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 200,
                  padding: const EdgeInsets.all(8),
                  child: Text.rich(
                    TextSpan(
                      text: 'already have an account?',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Log in',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
