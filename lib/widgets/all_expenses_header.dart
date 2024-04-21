import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/app_styles.dart';
import 'package:responsivedashboard/widgets/month_widget.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20,
        ),
        Expanded(child: SizedBox()),
        MonthWidget(),
      ],
    );
  }
}
