// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/app_styles.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom(
      {super.key,
      required this.buttomText,
      required this.buttomColor,
      required this.textColor});
  final String buttomText;
  final Color buttomColor, textColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: buttomColor,
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Text(buttomText,
            style: AppStyles.styleSemiBold16.copyWith(color: textColor)),
      ),
    );
  }
}
