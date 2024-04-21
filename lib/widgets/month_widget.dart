import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/app_styles.dart';

class MonthWidget extends StatelessWidget {
  const MonthWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300)),
      child: const Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16,
          ),
          SizedBox(width: 16),
          Icon(Icons.arrow_drop_down)
        ],
      ),
    );
  }
}
