import 'package:absensi_karyawan/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Get.putAsync(() async => await SharedPreferences.getInstance());

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aji Fora",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
