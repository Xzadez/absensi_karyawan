import 'package:absensi_karyawan/app/modules/widgets/custom_button1.dart';
import 'package:absensi_karyawan/app/modules/widgets/custom_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/controllers/auth_controller.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  final SignInController signInController = Get.put(SignInController());

  SignInView({super.key});

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
                      'Enter your username and password to Sign In',
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
                      controller: signInController.emailController,
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
                      controller: signInController.passwordController,
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
                        text: "Don't have an account? ",
                        style: const TextStyle(
                            color: Colors.grey), // Style for normal text
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign Up',
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black, // Style for "Register"
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed('sign-up');
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
                        onPressed:
                            signInController.authController.isLoading.value
                                ? () {}
                                : () {
                                    signInController.authController.loginUser(
                                      signInController.emailController.text,
                                      signInController.passwordController.text,
                                    );
                                    // Get.offAllNamed('home');
                                  },
                        child: signInController.authController.isLoading.value
                            ? CircularProgressIndicator()
                            : Text(
                                'Sign In',
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
