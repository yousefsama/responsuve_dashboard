import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/transaction_model.dart';
import 'package:responsivedashboard/utils/app_styles.dart';
import 'package:responsivedashboard/widgets/transaction_item.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({super.key});
  static const items = [
    TransactionModel(
      title: 'Cash Withdrawal',
      amount: r'$20,129',
      date: '13 April 2022',
      isWithDrawel: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      amount: r'$20,129',
      date: '13 April 2022',
      isWithDrawel: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      amount: r'$20,129',
      date: '13 April 2022',
      isWithDrawel: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "13 April 2022",
          style:
              AppStyles.styleRegular16.copyWith(color: const Color(0xffAAAAAA)),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: TransactionItem(
                transactionModel: items[index],
              ),
            );
          },
        )
      ],
    );
  }
}
