import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/income_details_model.dart';
import 'package:responsivedashboard/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeDetailsModel});
  final IncomeDetailsModel incomeDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: incomeDetailsModel.color),
      ),
      title: Text(
        incomeDetailsModel.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        incomeDetailsModel.presentage,
        style: AppStyles.styleMedium16,
      ),
    );
  }
}
