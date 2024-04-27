import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/transaction_model.dart';
import 'package:responsivedashboard/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.transactionModel,
  });
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular14,
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleSemiBold20.copyWith(
            color: transactionModel.isWithDrawel
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
