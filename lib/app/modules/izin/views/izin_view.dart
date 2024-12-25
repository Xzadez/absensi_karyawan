import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/izin_controller.dart';

class IzinView extends GetView<IzinController> {
  const IzinView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IzinView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'IzinView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
