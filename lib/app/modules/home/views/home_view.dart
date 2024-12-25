import 'package:absensi_karyawan/app/modules/absen/views/absen_view.dart';
import 'package:absensi_karyawan/app/modules/permission/views/permission_view.dart';
import 'package:absensi_karyawan/app/modules/riwayat_absen/views/riwayat_absen_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../widgets/custom_bottomNavBar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});

  final HomeController homeController = Get.put(HomeController());
  final List<Widget> pages = [
    AbsenView(),
    const PermissionView(),
    const RiwayatAbsenView()
  ];

  final TextEditingController titleController = TextEditingController();
  final TextEditingController tagController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: Obx(() {
        print(homeController.selectedIndex.value);
        return pages[homeController.selectedIndex.value];
      }),
      bottomNavigationBar: CustomBottomnavbar(),
    );
  }
}
