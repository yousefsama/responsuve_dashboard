import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/app_styles.dart';
import 'package:responsivedashboard/widgets/month_widget.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold20,
        ),
        const Spacer(),
        const MonthWidget(),
      ],
    );
  }
}
