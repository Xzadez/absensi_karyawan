import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cuti_controller.dart';

class CutiView extends GetView<CutiController> {
  const CutiView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CutiView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CutiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
