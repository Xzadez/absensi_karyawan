import 'package:flutter/material.dart';

class CustomButton1 extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  const CustomButton1({super.key, required this.onPressed, this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black, // Button background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // Rounded corners
          ),
          padding: const EdgeInsets.symmetric(
              horizontal: 40, vertical: 15), // Padding
        ),
        child: child,
      ),
    );
  }
}
