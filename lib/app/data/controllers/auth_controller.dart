import 'package:absensi_karyawan/app/data/controllers/user_controller.dart';
import 'package:absensi_karyawan/app/modules/home/views/home_view.dart';
import 'package:absensi_karyawan/app/modules/sign_in/views/sign_in_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final UserController _userController = Get.put(UserController());

  final SharedPreferences _prefs = Get.find<SharedPreferences>();
  RxBool isLoading = false.obs;
  RxBool isLoggedIn = false.obs;

  RxString username = ''.obs;
  RxString email = ''.obs;

  Future<void> registerUser(String email, String password) async {
    try {
      isLoading.value = true;
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.snackbar('Success', 'Registration successful',
          backgroundColor: Colors.green);
      Get.offNamed('sign-in'); // Navigasi ke halaman Login
    } catch (error) {
      Get.snackbar('Error', 'Registration failed: $error',
          backgroundColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> loginUser(String email, String password) async {
    try {
      isLoading.value = true;
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      String uid = userCredential.user!.uid;
      _prefs.setString('user_token', _auth.currentUser!.uid);
      isLoggedIn.value = true;

      await loadUsername(uid);

      Get.snackbar('Success', 'Login successful',
          backgroundColor: Colors.green);
      Get.offNamed('home');
    } catch (error) {
      Get.snackbar('Error', 'Login failed: $error',
          backgroundColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> loadUsername(String uid) async {
    final storedUsername = await _userController.getUsername(uid);
    if (storedUsername != null) {
      username.value = storedUsername['username'] ?? 'Unknown';
      email.value = storedUsername['email'] ?? 'Unknown';
      _prefs.setString('username', username.value);
      _prefs.setString('email', email.value);
    } else {
      print("Username not found for uid: $uid");
    }
  }

  Future<void> checkLoginStatus() async {
    isLoggedIn.value = _prefs.containsKey('user_token');
  }

  void logout() {
    isLoggedIn.value = false;
    _auth.signOut();
    Get.offAllNamed('/sign-in');
  }
}
