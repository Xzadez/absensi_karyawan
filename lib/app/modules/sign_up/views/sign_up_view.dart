import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/controllers/auth_controller.dart';
import '../../widgets/custom_button1.dart';
import '../../widgets/custom_textfield.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  final AuthController _authController = Get.put(AuthController());
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: -40,
                left: -40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(120),
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: -50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(120),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 140,
                ),
                child: Column(
                  children: [
                    const Text(
                      'Enter your details to Sign Up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    CustomTextField(
                      controller: _emailController,
                      hintText: 'Email',
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.email_rounded,
                          color: Colors.black54,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      controller: _passwordController,
                      hintText: 'Password',
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.person_rounded,
                          color: Colors.black54,
                        ),
                      ),
                      isPassword: true,
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Already have an account? ",
                        style: const TextStyle(
                            color: Colors.grey), // Style for normal text
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign In',
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black, // Style for "Register"
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed('sign-in');
                              },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: CustomButton1(
                        onPressed: _authController.isLoading.value
                            ? null
                            : () {
                                _authController.registerUser(
                                  _emailController.text,
                                  _passwordController.text,
                                );
                              },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
