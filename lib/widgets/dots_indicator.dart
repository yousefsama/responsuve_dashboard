import 'package:flutter/material.dart';
import 'package:responsivedashboard/widgets/custom_dots_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 4),
                child: CustomDotIndicator(isActive: index == currentPageIndex),
              )),
    );
  }
}
