import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/controllers/home_controller.dart';

class CustomBottomnavbar extends StatelessWidget {
  CustomBottomnavbar({super.key});
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 100,
      padding: const EdgeInsets.only(bottom: 40, left: 50, right: 50),
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(10),
              blurRadius: 10,
              spreadRadius: 5,
              offset: const Offset(0, 10),
            )
          ],
        ),
        child: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(24),
                  ),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.timer_sharp,
                    color: (controller.selectedIndex == 0)
                        ? const Color(0xFF141E28)
                        : const Color(0x48141E28),
                  ),
                  onPressed: () {
                    controller.selectedIndex(0);
                  },
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(24),
                  ),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.edit_document,
                    color: (controller.selectedIndex == 1)
                        ? const Color(0xFF141E28)
                        : const Color(0x48141E28),
                  ),
                  onPressed: () {
                    controller.selectedIndex(1);
                  },
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(24),
                  ),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.history,
                    color: (controller.selectedIndex == 2)
                        ? const Color(0xFF141E28)
                        : const Color(0x48141E28),
                  ),
                  onPressed: () {
                    controller.selectedIndex(2);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
