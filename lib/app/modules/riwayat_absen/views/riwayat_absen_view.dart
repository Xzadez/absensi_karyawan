import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/riwayat_absen_controller.dart';

class RiwayatAbsenView extends GetView<RiwayatAbsenController> {
  const RiwayatAbsenView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 60),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Riwayat Absen',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Selasa, 18 April 2020',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '08:35 - 15:40',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 0.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Selasa, 18 April 2020',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Izin Cuti',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 0.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Selasa, 18 April 2020',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Izin Cuti',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 0.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Selasa, 18 April 2020',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '08:35 - 15:40',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 0.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Selasa, 18 April 2020',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '08:35 - 15:40',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 0.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Selasa, 18 April 2020',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '08:35 - 15:40',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 0.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Selasa, 18 April 2020',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Izin Tidak Hadir',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.amber,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 0.5,
            ),
          ],
        ),
      ),
    );
  }
}
