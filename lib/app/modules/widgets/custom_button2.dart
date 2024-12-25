import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget? child;
  const CustomButton2({super.key, required this.onPressed, this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue[500], // Button background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24), // Rounded corners
          ),
          padding:
              EdgeInsets.symmetric(horizontal: 48, vertical: 14), // Padding
        ),
        child: child,
      ),
    );
  }
}
