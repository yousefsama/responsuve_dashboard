import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      child: Container(
        width: isActive ? 32 : 8,
        height: 8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: isActive ? const Color(0xff4EB7F2) : Colors.grey),
      ),
    );
  }
}
